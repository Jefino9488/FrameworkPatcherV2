import asyncio

import httpx

from Framework.helpers.logger import LOGGER
from config import *


def _select_workflow_id(api_level: str) -> str:
    """Select the appropriate workflow file based on API level.

    Accepts either Android version (e.g., '16', 16, '15.0') or API level ('36'..'33').
    Always returns a non-empty workflow file name.
    """
    # Normalize input
    api_str = str(api_level).strip() if api_level is not None else ""

    # Convert Android version to API level if needed
    if api_str in {"13", "14", "15", "16"} or api_str.replace(".", "", 1).isdigit() and int(float(api_str)) in {13, 14,
                                                                                                                15, 16}:
        try:
            from Framework.helpers.provider import android_version_to_api_level
            api_str = android_version_to_api_level(api_str)
        except Exception:
            # Fallback to best effort mapping
            mapping = {"13": "33", "14": "34", "15": "35", "16": "36"}
            api_str = mapping.get(api_str, api_str)

    # Map API levels to workflow files
    if api_str == "36":
        return WORKFLOW_ID_A16 or "android16.yml"
    if api_str == "35":
        return WORKFLOW_ID_A15 or "android15.yml"
    if api_str == "34":
        return WORKFLOW_ID_A14 or "android14.yml"
    if api_str == "33":
        return WORKFLOW_ID_A13 or "android13.yml"

    # Unknown input: fall back to explicit WORKFLOW_ID, then to latest known workflow
    if WORKFLOW_ID:
        return WORKFLOW_ID

    # Safe default
    return WORKFLOW_ID_A16 or WORKFLOW_ID_A15 or WORKFLOW_ID_A14 or WORKFLOW_ID_A13 or "android15.yml"


async def trigger_github_workflow_async(links: dict, device_name: str, device_codename: str, version_name: str,
                                        api_level: str,
                                        user_id: int, features: dict = None) -> int:
    """Trigger GitHub workflow with improved error handling and retry logic."""
    workflow_id = _select_workflow_id(api_level)
    if not workflow_id:
        LOGGER.error(f"Could not determine workflow ID for API level: {api_level}")
        raise ValueError(f"Could not determine workflow ID for API level: {api_level}")
    url = f"https://api.github.com/repos/{GITHUB_OWNER}/{GITHUB_REPO}/actions/workflows/{workflow_id}/dispatches"

    headers = {
        "Authorization": f"token {GITHUB_TOKEN}",
        "Accept": "application/vnd.github.v3+json",
        "User-Agent": "FrameworkPatcherBot/1.0"
    }

    # Default features if not provided
    if features is None:
        features = {
            "enable_signature_bypass": True,
            "enable_cn_notification_fix": False,
            "enable_disable_secure_flag": False,
            "enable_kaorios_toolbox": False
        }

    feature_list = []
    if features.get("enable_signature_bypass", True):
        feature_list.append("disable_signature_verification")
    if features.get("enable_cn_notification_fix", False):
        feature_list.append("cn_notification_fix")
    if features.get("enable_disable_secure_flag", False):
        feature_list.append("disable_secure_flag")
    if features.get("enable_kaorios_toolbox", False):
        feature_list.append("kaorios_toolbox")

    features_str = ",".join(feature_list)
    if not features_str:
        features_str = "disable_signature_verification"

    data = {
        "ref": "master",
        "inputs": {
            "api_level": api_level,
            "device_name": device_name,
            "device_codename": device_codename,
            "version_name": version_name,
            "user_id": str(user_id),
            "features": features_str
        }
    }
    
    # Only include JAR URLs if they are provided (not empty or None)
    framework_url = links.get("framework.jar")
    services_url = links.get("services.jar")
    miui_services_url = links.get("miui-services.jar")
    
    if framework_url:
        data["inputs"]["framework_url"] = framework_url
    if services_url:
        data["inputs"]["services_url"] = services_url
    if miui_services_url:
        data["inputs"]["miui_services_url"] = miui_services_url

    LOGGER.info(
        f"Attempting to dispatch GitHub workflow to {url} for device {device_name} version {version_name} for user {user_id}")

    max_attempts = 3
    base_timeout = 60

    for attempt in range(max_attempts):
        try:
            timeout = base_timeout + (attempt * 20)
            LOGGER.info(f"GitHub workflow trigger attempt {attempt + 1}/{max_attempts} with timeout {timeout}s")

            async with httpx.AsyncClient(
                    timeout=httpx.Timeout(
                        connect=20.0,
                        read=timeout,
                        write=timeout,
                        pool=10.0
                    ),
                    limits=httpx.Limits(max_connections=5, max_keepalive_connections=2)
            ) as client:
                resp = await client.post(url, json=data, headers=headers)
                resp.raise_for_status()

                LOGGER.info(f"GitHub workflow triggered successfully on attempt {attempt + 1}")
                return resp.status_code

        except httpx.TimeoutException as e:
            LOGGER.error(f"GitHub API timeout on attempt {attempt + 1}: {e}")
            if attempt == max_attempts - 1:
                raise e

        except httpx.HTTPStatusError as e:
            LOGGER.error(f"GitHub API error {e.response.status_code} on attempt {attempt + 1}: {e.response.text}")
            if e.response.status_code in [429, 502, 503, 504]:  # Retry on these status codes
                if attempt < max_attempts - 1:
                    wait_time = min(2 ** attempt, 30)
                    LOGGER.info(f"Retrying GitHub API call in {wait_time} seconds...")
                    await asyncio.sleep(wait_time)
                    continue
            raise e

        except httpx.RequestError as e:
            LOGGER.error(f"GitHub API request error on attempt {attempt + 1}: {e}")
            if attempt < max_attempts - 1:
                wait_time = min(2 ** attempt, 30)
                LOGGER.info(f"Retrying GitHub API call in {wait_time} seconds...")
                await asyncio.sleep(wait_time)
                continue
            raise e

        except Exception as e:
            LOGGER.error(f"Unexpected error triggering GitHub workflow on attempt {attempt + 1}: {e}", exc_info=True)
            if attempt < max_attempts - 1:
                wait_time = min(2 ** attempt, 30)
                LOGGER.info(f"Retrying GitHub API call in {wait_time} seconds...")
                await asyncio.sleep(wait_time)
                continue
            raise e

        # Wait before retry (except on last attempt)
        if attempt < max_attempts - 1:
            wait_time = min(2 ** attempt, 30)
            LOGGER.info(f"Retrying GitHub API call in {wait_time} seconds...")
            await asyncio.sleep(wait_time)

    raise Exception("Failed to trigger GitHub workflow after all attempts")


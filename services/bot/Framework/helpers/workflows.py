import asyncio
import httpx

from Framework.helpers.logger import LOGGER
from config import *


def _select_workflow_id(api_level: str) -> str:
    # Prefer specific workflow IDs if provided, fallback to default WORKFLOW_ID
    if api_level == "36":
        return WORKFLOW_ID_A16 or "android16.yml" or WORKFLOW_ID
    elif api_level == "35":
        return WORKFLOW_ID_A15 or "android15.yml" or WORKFLOW_ID
    elif api_level == "34":
        return WORKFLOW_ID_A14 or "android14.yml" or WORKFLOW_ID
    elif api_level == "33":
        return WORKFLOW_ID_A13 or "android13.yml" or WORKFLOW_ID
    return WORKFLOW_ID


async def trigger_github_workflow_async(links: dict, device_name: str, version_name: str, api_level: str,
                                        user_id: int, features: dict = None) -> int:
    """Trigger GitHub workflow with improved error handling and retry logic."""
    workflow_id = _select_workflow_id(api_level)
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
            "enable_disable_secure_flag": False
        }
    
    data = {
        "ref": "master",
        "inputs": {
            "api_level": api_level,
            "device_name": device_name,
            "version_name": version_name,
            "framework_url": links.get("framework.jar"),
            "services_url": links.get("services.jar"),
            "miui_services_url": links.get("miui-services.jar"),
            "user_id": str(user_id),
            "enable_signature_bypass": str(features.get("enable_signature_bypass", True)).lower(),
            "enable_cn_notification_fix": str(features.get("enable_cn_notification_fix", False)).lower(),
            "enable_disable_secure_flag": str(features.get("enable_disable_secure_flag", False)).lower()
        }
    }

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


"""
Xiaomi Device and Software Data Provider
Provides device information, firmware versions, and MIUI ROM data
"""

from typing import List, Dict, Any, Optional

import httpx
import yaml

from Framework.helpers.logger import LOGGER

# URLs for data sources
DEVICES_URL = "https://raw.githubusercontent.com/XiaomiFirmwareUpdater/xiaomi_devices/master/devices.json"
FIRMWARE_CODENAMES_URL = "https://raw.githubusercontent.com/xiaomifirmwareupdater/xiaomifirmwareupdater.github.io/master/data/firmware_codenames.yml"
MIUI_CODENAMES_URL = "https://raw.githubusercontent.com/xiaomifirmwareupdater/xiaomifirmwareupdater.github.io/master/data/miui_codenames.yml"
VENDOR_CODENAMES_URL = "https://raw.githubusercontent.com/xiaomifirmwareupdater/xiaomifirmwareupdater.github.io/master/data/vendor_codenames.yml"
FIRMWARE_URL = "https://raw.githubusercontent.com/xiaomifirmwareupdater/xiaomifirmwareupdater.github.io/master/data/devices/latest.yml"
MIUI_ROMS_URL = "https://raw.githubusercontent.com/xiaomifirmwareupdater/miui-updates-tracker/master/data/latest.yml"

# Global cache
_cache = {
    "device_list": [],
    "codename_to_name": {},
    "firmware_codenames": [],
    "miui_codenames": [],
    "vendor_codenames": [],
    "firmware_data": {},
    "miui_data": {},
    "initialized": False
}


async def initialize_data():
    """Initialize all data from remote sources."""
    if _cache["initialized"]:
        LOGGER.info("Data already initialized, skipping...")
        return True

    try:
        LOGGER.info("Initializing device and software data...")
        async with httpx.AsyncClient(timeout=60.0) as client:
            # Load all data concurrently
            await load_devices_data(client)
            await load_yaml_list_data(client, FIRMWARE_CODENAMES_URL, "firmware_codenames", "firmware codenames")
            await load_yaml_list_data(client, MIUI_CODENAMES_URL, "miui_codenames", "MIUI codenames")
            await load_yaml_list_data(client, VENDOR_CODENAMES_URL, "vendor_codenames", "vendor codenames")
            await load_firmware_data(client)
            await load_miui_roms_data(client)

        _cache["initialized"] = True
        LOGGER.info("Data initialization complete!")
        return True
    except Exception as e:
        LOGGER.error(f"Failed to initialize data: {e}", exc_info=True)
        return False


async def load_devices_data(client: httpx.AsyncClient):
    """Load device list and codename mappings."""
    try:
        response = await client.get(DEVICES_URL)
        response.raise_for_status()
        devices_data = response.json()

        device_list = []
        codename_map = {}

        for codename, details in devices_data.items():
            if "display_name_en" in details:
                name = details["display_name_en"]
                device_list.append({"name": name, "codename": codename})
                codename_map[codename] = name
            elif "display_name" in details:
                name = details["display_name"]
                device_list.append({"name": name, "codename": codename})
                codename_map[codename] = name

        _cache["device_list"] = device_list
        _cache["codename_to_name"] = codename_map
        LOGGER.info(f"Loaded {len(device_list)} devices.")

    except Exception as e:
        LOGGER.error(f"Error fetching devices: {e}")


async def load_yaml_list_data(client: httpx.AsyncClient, url: str, cache_key: str, name: str):
    """Load YAML list data into cache."""
    try:
        response = await client.get(url)
        response.raise_for_status()
        data = yaml.safe_load(response.text)
        _cache[cache_key] = data
        LOGGER.info(f"Loaded {len(data)} {name}.")
    except Exception as e:
        LOGGER.error(f"Error fetching {name}: {e}")


async def load_firmware_data(client: httpx.AsyncClient):
    """Load firmware version data."""
    try:
        response = await client.get(FIRMWARE_URL)
        response.raise_for_status()
        data = yaml.safe_load(response.text)

        latest = {}
        for item in data:
            try:
                codename = item['downloads']['github'].split('/')[4].split('_')[-1]
                version = item['versions']['miui']
                if latest.get(codename):
                    latest[codename].append(version)
                else:
                    latest[codename] = [version]
            except (KeyError, IndexError, TypeError):
                continue

        _cache["firmware_data"] = latest
        LOGGER.info(f"Loaded firmware data for {len(latest)} devices.")

    except Exception as e:
        LOGGER.error(f"Error fetching firmware: {e}")


async def load_miui_roms_data(client: httpx.AsyncClient):
    """Load MIUI ROM data."""
    try:
        response = await client.get(MIUI_ROMS_URL)
        response.raise_for_status()
        roms = yaml.safe_load(response.text)

        latest = {}
        for item in roms:
            try:
                codename = item['codename'].split('_')[0]
                if latest.get(codename):
                    latest[codename].append(item)
                else:
                    latest[codename] = [item]
            except (KeyError, IndexError, TypeError):
                continue

        _cache["miui_data"] = latest
        LOGGER.info(f"Loaded MIUI ROMs data for {len(latest)} devices.")

    except Exception as e:
        LOGGER.error(f"Error fetching MIUI ROMs: {e}")


def get_all_devices() -> List[Dict[str, str]]:
    """Get list of all devices."""
    return _cache["device_list"]


def get_device_by_codename(codename: str) -> Optional[Dict[str, str]]:
    """Get device information by codename."""
    name = _cache["codename_to_name"].get(codename)
    if name:
        return {"name": name, "codename": codename}
    return None


def search_devices(query: str, limit: int = 10) -> List[Dict[str, str]]:
    """Search devices by name or codename."""
    query = query.lower()
    results = []

    for device in _cache["device_list"]:
        if query in device["name"].lower() or query in device["codename"].lower():
            results.append(device)
            if len(results) >= limit:
                break

    return results


def get_device_software(codename: str) -> Optional[Dict[str, Any]]:
    """Get software versions for a device."""
    # Extract base codename (first part before underscore)
    base_codename = codename.split('_')[0]

    device_name = _cache["codename_to_name"].get(codename) or _cache["codename_to_name"].get(base_codename)
    if not device_name:
        return None

    firmware_versions = _cache["firmware_data"].get(base_codename, [])
    miui_roms = _cache["miui_data"].get(base_codename, [])

    return {
        "name": device_name,
        "codename": codename,
        "firmware_versions": firmware_versions,
        "miui_roms": miui_roms
    }


def get_android_version_from_miui(codename: str, miui_version: str) -> Optional[str]:
    """Get Android version from MIUI ROM version."""
    base_codename = codename.split('_')[0]
    miui_roms = _cache["miui_data"].get(base_codename, [])

    for rom in miui_roms:
        if rom.get('version') == miui_version or rom.get('miui') == miui_version:
            return rom.get('android')

    return None


def android_version_to_api_level(android_version: str) -> str:
    """Convert Android version to API level."""
    # Handle float strings like "13.0", "14.0", "15.0"
    try:
        android_int = int(float(android_version))
    except (ValueError, TypeError):
        android_int = android_version

    version_map = {
        '13': '33',
        '14': '34',
        '15': '35',
        '16': '36',
        # Support integer inputs as well
        13: '33',
        14: '34',
        15: '35',
        16: '36'
    }

    # Try with the integer version first, then fall back to original
    return version_map.get(android_int, version_map.get(str(android_int), str(android_version)))


def is_codename_valid(codename: str) -> bool:
    """Check if a codename is valid."""
    base_codename = codename.split('_')[0]
    return base_codename in _cache["codename_to_name"]


def get_similar_codenames(codename: str, limit: int = 5) -> List[str]:
    """Get similar codenames for suggestions when user enters invalid codename."""
    codename = codename.lower()
    all_codenames = list(_cache["codename_to_name"].keys())

    # Find codenames that start with the same letters
    similar = []
    for cn in all_codenames:
        if cn.startswith(codename[:2]):
            similar.append(cn)
            if len(similar) >= limit:
                break

    return similar

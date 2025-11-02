import httpx
import yaml
import asyncio
from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from contextlib import asynccontextmanager
from typing import List, Dict, Any

DEVICES_URL = "https://raw.githubusercontent.com/XiaomiFirmwareUpdater/xiaomi_devices/master/devices.json"
FIRMWARE_CODENAMES_URL = "https://raw.githubusercontent.com/xiaomifirmwareupdater/xiaomifirmwareupdater.github.io/master/data/firmware_codenames.yml"
MIUI_CODENAMES_URL = "https://raw.githubusercontent.com/xiaomifirmwareupdater/xiaomifirmwareupdater.github.io/master/data/miui_codenames.yml"
VENDOR_CODENAMES_URL = "https://raw.githubusercontent.com/xiaomifirmwareupdater/xiaomifirmwareupdater.github.io/master/data/vendor_codenames.yml"
FIRMWARE_URL = "https://raw.githubusercontent.com/xiaomifirmwareupdater/xiaomifirmwareupdater.github.io/master/data/devices/latest.yml"
MIUI_ROMS_URL = "https://raw.githubusercontent.com/xiaomifirmwareupdater/miui-updates-tracker/master/data/latest.yml"

app_cache = {
    "device_list": [],
    "codename_to_name": {},
    "firmware_codenames": [],
    "miui_codenames": [],
    "vendor_codenames": [],
    "firmware_data": {},
    "miui_data": {}
}


async def load_devices_data(client: httpx.AsyncClient):
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

        app_cache["device_list"] = device_list
        app_cache["codename_to_name"] = codename_map
        print(f"Loaded {len(device_list)} devices.")

    except Exception as e:
        print(f"ERROR fetching devices: {e}")


async def load_yaml_list_data(client: httpx.AsyncClient, url: str, cache_key: str, name: str):
    try:
        response = await client.get(url)
        response.raise_for_status()
        data = yaml.safe_load(response.text)
        app_cache[cache_key] = data
        print(f"Loaded {len(data)} {name}.")
    except Exception as e:
        print(f"ERROR fetching {name}: {e}")


async def load_firmware_data(client: httpx.AsyncClient):
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

        app_cache["firmware_data"] = latest
        print(f"Loaded firmware data for {len(latest)} devices.")

    except Exception as e:
        print(f"ERROR fetching firmware: {e}")


async def load_miui_roms_data(client: httpx.AsyncClient):
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

        app_cache["miui_data"] = latest
        print(f"Loaded MIUI ROMs data for {len(latest)} devices.")

    except Exception as e:
        print(f"ERROR fetching MIUI ROMs: {e}")


@asynccontextmanager
async def lifespan(app: FastAPI):
    print("Server starting up... Fetching all data...")
    async with httpx.AsyncClient() as client:
        await asyncio.gather(
            load_devices_data(client),
            load_yaml_list_data(client, FIRMWARE_CODENAMES_URL, "firmware_codenames", "firmware codenames"),
            load_yaml_list_data(client, MIUI_CODENAMES_URL, "miui_codenames", "MIUI codenames"),
            load_yaml_list_data(client, VENDOR_CODENAMES_URL, "vendor_codenames", "vendor codenames"),
            load_firmware_data(client),
            load_miui_roms_data(client)
        )
    print("Server is ready and all data is cached.")
    yield
    print("Server shutting down...")


app = FastAPI(
    title="Xiaomi Software API",
    description="API for accessing Xiaomi device firmware and MIUI ROM information",
    version="1.0.0",
    lifespan=lifespan
)

# Add CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # Allows all origins
    allow_credentials=True,
    allow_methods=["*"],  # Allows all methods
    allow_headers=["*"],  # Allows all headers
)


@app.get("/")
async def root():
    return {
        "message": "Welcome to the Xiaomi Software API.",
        "endpoints": [
            "/devices",
            "/devices/{codename}/software",
            "/codenames"
        ]
    }


@app.get("/devices")
async def get_all_devices() -> List[Dict[str, str]]:
    return app_cache["device_list"]


@app.get("/devices/{codename}/software")
async def get_device_software(codename: str) -> Dict[str, Any]:
    device_name = app_cache["codename_to_name"].get(codename)
    if not device_name:
        raise HTTPException(status_code=404, detail="Device codename not found.")

    firmware_versions = app_cache["firmware_data"].get(codename, [])
    miui_roms = app_cache["miui_data"].get(codename, [])

    return {
        "name": device_name,
        "codename": codename,
        "firmware_versions": firmware_versions,
        "miui_roms": miui_roms
    }


@app.get("/codenames")
async def get_all_codenames() -> Dict[str, List[str]]:
    return {
        "firmware_codenames": app_cache["firmware_codenames"],
        "miui_codenames": app_cache["miui_codenames"],
        "vendor_codenames": app_cache["vendor_codenames"],
    }


if __name__ == "__main__":
    import os
    import uvicorn
    from dotenv import load_dotenv

    load_dotenv()

    host = os.getenv("WEB_HOST", "0.0.0.0")
    port = int(os.getenv("WEB_PORT", "9837"))

    print(f"Starting FastAPI server on {host}:{port}")
    uvicorn.run(app, host=host, port=port, log_level="info")
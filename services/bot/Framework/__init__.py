import time
import os
from pathlib import Path
from pyrogram import Client
from Framework.helpers.logger import LOGGER
from dotenv import load_dotenv


try:
    import uvloop  
    uvloop.install()
except ImportError:
    uvloop = None  


LOGGER.info("Starting Framework....")
BotStartTime = time.time()
load_dotenv()

def require_env(name: str) -> str:
    value = os.environ.get(name)
    if not value:
        raise RuntimeError(f"Missing required environment variable: {name}")
    return value

API_ID = require_env("API_ID")
if not API_ID.isdigit():
    raise RuntimeError("API_ID must be numeric in the environment.")

plugins = dict(root="Framework.plugins")

class CustomClient(Client):
    async def start(self):
        await super().start()

bot = CustomClient(
    "FrameworkPatcherBot",
    api_id=int(API_ID),
    api_hash=require_env("API_HASH"),
    bot_token=require_env("BOT_TOKEN"),
    plugins=plugins,
    in_memory=False,
    sleep_threshold=15,
    max_concurrent_transmissions=10,
)

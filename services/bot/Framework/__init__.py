import time
import os
from pyrogram import Client
from Framework.helpers.logger import LOGGER
import config


try:
    import uvloop  
    uvloop.install()
except ImportError:
    uvloop = None  

LOGGER.info("Starting Framework Patcher Bot...")
BotStartTime = time.time()

plugins = dict(root="Framework.plugins")

class CustomClient(Client):
    async def start(self):
        await super().start()

bot = CustomClient(
    "FrameworkPatcherBot",
    api_id=config.API_ID,
    api_hash=config.API_HASH,
    bot_token=config.BOT_TOKEN,
    plugins=plugins,
    in_memory=False,
    sleep_threshold=15,
    max_concurrent_transmissions=10,
)

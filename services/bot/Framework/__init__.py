import asyncio
import time

from pyrogram import Client

import config
from Framework.helpers.logger import LOGGER

try:
    import uvloop

    asyncio.set_event_loop_policy(uvloop.EventLoopPolicy())
except ImportError:
    uvloop = None

try:
    loop = asyncio.get_event_loop()
except RuntimeError:
    loop = asyncio.new_event_loop()
    asyncio.set_event_loop(loop)

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

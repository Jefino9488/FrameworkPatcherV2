import asyncio

from pyrogram.errors import FloodWait, NetworkMigrate, AuthKeyUnregistered

from Framework import bot
from Framework.helpers.logger import LOGGER


async def check_connection_health() -> bool:
    """Check if the bot connection is healthy."""
    try:
        me = await bot.get_me()
        return me is not None
    except Exception as e:
        LOGGER.error(f"Connection health check failed: {e}")
        return False


async def ensure_connection(func, *args, **kwargs):
    """Ensure connection is healthy before executing function."""
    max_retries = 3
    retry_delay = 2

    for attempt in range(max_retries):
        try:
            if await check_connection_health():
                return await func(*args, **kwargs)
            else:
                LOGGER.warning(f"Connection unhealthy, attempt {attempt + 1}/{max_retries}")
                await asyncio.sleep(retry_delay * (attempt + 1))
        except (NetworkMigrate, AuthKeyUnregistered) as e:
            LOGGER.error(f"Connection error on attempt {attempt + 1}: {e}")
            if attempt < max_retries - 1:
                await asyncio.sleep(retry_delay * (attempt + 1))
            else:
                raise e
        except FloodWait as e:
            LOGGER.warning(f"Flood wait: {e.value} seconds")
            await asyncio.sleep(e.value)
        except Exception as e:
            LOGGER.error(f"Unexpected error on attempt {attempt + 1}: {e}")
            if attempt < max_retries - 1:
                await asyncio.sleep(retry_delay * (attempt + 1))
            else:
                raise e

    raise Exception("Failed to establish connection after multiple attempts")

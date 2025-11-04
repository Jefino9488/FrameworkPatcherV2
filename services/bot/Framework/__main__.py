from pyrogram import idle
from Framework import bot
from Framework.helpers.logger import LOGGER
from Framework.plugins.dev.updater import restart_notification
from Framework.helpers.maintenance import notify_users_maintenance  
from Framework.helpers.provider import *

async def main():
    await bot.start()
    me = await bot.get_me()
    await restart_notification()
    LOGGER.info("Initializing device data provider...")
    await initialize_data()
    LOGGER.info(f"{me.first_name} (@{me.username}) [ID: {me.id}]")

    await idle()
    
    await notify_users_maintenance()

    await bot.stop()
    LOGGER.info("Bot stopped")

if __name__ == "__main__":
    bot.loop.run_until_complete(main())

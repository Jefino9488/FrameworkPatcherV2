from pyrogram import idle

from Framework import bot, loop
from Framework.helpers.maintenance import notify_users_maintenance
from Framework.helpers.provider import *
from Framework.helpers.provider import initialize_data
from Framework.plugins.dev.updater import restart_notification


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
    loop.run_until_complete(main())

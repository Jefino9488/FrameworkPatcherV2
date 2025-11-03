from pyrogram import idle
from Framework import bot
from Framework.helpers.logger import LOGGER
from Framework.plugins.dev.updater import restart_notification

async def main():
    await bot.start()
    me = await bot.get_me()
    await restart_notification()
    LOGGER.info(f"{me.first_name} (@{me.username}) [ID: {me.id}]")

    await idle()
    await bot.stop()

if __name__ == "__main__":
      bot.loop.run_until_complete(main())

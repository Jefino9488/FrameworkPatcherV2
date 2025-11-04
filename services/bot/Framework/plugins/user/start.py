from pyrogram import Client, filters
from pyrogram.types import Message
from pyrogram.types import InlineKeyboardMarkup, Message

from Framework import bot
from Framework.helpers.logger import LOGGER
from Framework.helpers.buttons import *
from Framework.helpers.utils import ensure_connection

@bot.on_message(filters.private & filters.command("start"))
async def start_command_handler(bot: Client, message: Message):
    """Handles the /start command."""
    try:
        await ensure_connection(
            message.reply_text,
            text=START_TEXT.format(message.from_user.mention),
            disable_web_page_preview=True,
            quote=True,
            reply_markup=InlineKeyboardMarkup([
                [BUTTON1, BUTTON2]
            ])
        )
    except Exception as e:
        LOGGER.error(f"Error in start command handler: {e}")
        try:
            await message.reply_text("Sorry, I'm experiencing connection issues. Please try again later.", quote=True)
        except:
            pass

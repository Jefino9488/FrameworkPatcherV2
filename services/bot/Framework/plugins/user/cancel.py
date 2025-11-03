from pyrogram import filters, Client
from pyrogram.types import Message

from Framework.helpers.state import *
from Framework import bot

@bot.on_message(filters.private & filters.command("cancel"))
async def cancel_command(bot: Client, message: Message):
    """Cancels the current operation and resets the user's state."""
    user_id = message.from_user.id
    if user_id in user_states:
        user_states.pop(user_id)
        await message.reply_text("Operation cancelled. You can /start_patch again.", quote=True)
    else:
        await message.reply_text("No active operation to cancel.", quote=True)

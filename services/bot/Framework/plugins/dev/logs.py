from pyrogram import filters, Client, enums
from pyrogram.types import Message

from Framework.helpers.decorators import owner
from Framework import bot

import os


@bot.on_message(filters.private & filters.command("logs"))
@owner
async def logs_handler(bot: Client, message: Message):
    """Display recent bot logs. Usage: /logs [lines]"""
    args = message.text.split()
    
    # Default to last 50 lines, max 200
    num_lines = 50
    if len(args) > 1:
        try:
            num_lines = min(int(args[1]), 200)
        except ValueError:
            pass
    
    log_file = "logs.txt"
    
    if not os.path.exists(log_file):
        await message.reply_text("❌ No log file found.", quote=True)
        return
    
    reply = await message.reply_text("📜 Reading logs...", quote=True)
    
    try:
        with open(log_file, "r") as f:
            lines = f.readlines()
        
        # Get last N lines
        recent_lines = lines[-num_lines:] if len(lines) > num_lines else lines
        log_content = "".join(recent_lines)
        
        if not log_content.strip():
            await reply.edit_text("📜 Log file is empty.")
            return
        
        # Truncate if too long for Telegram message
        if len(log_content) > 3900:
            log_content = log_content[-3900:]
            log_content = "...[truncated]\n" + log_content
        
        await reply.edit_text(
            f"📜 **Last {len(recent_lines)} log entries:**\n\n```\n{log_content}```",
            parse_mode=enums.ParseMode.MARKDOWN
        )
        
    except Exception as e:
        await reply.edit_text(f"❌ Error reading logs: `{str(e)}`")


@bot.on_message(filters.private & filters.command("logfile"))
@owner
async def logfile_handler(bot: Client, message: Message):
    """Send the full log file as a document."""
    log_file = "logs.txt"
    
    if not os.path.exists(log_file):
        await message.reply_text("❌ No log file found.", quote=True)
        return
    
    file_size = os.path.getsize(log_file)
    if file_size == 0:
        await message.reply_text("📜 Log file is empty.", quote=True)
        return
    
    reply = await message.reply_text("📤 Uploading log file...", quote=True)
    
    try:
        await message.reply_document(
            document=log_file,
            caption=f"📜 **Bot Logs**\nSize: {file_size / 1024:.1f} KB",
            quote=True
        )
        await reply.delete()
    except Exception as e:
        await reply.edit_text(f"❌ Error sending log file: `{str(e)}`")


@bot.on_message(filters.private & filters.command("clearlogs"))
@owner
async def clearlogs_handler(bot: Client, message: Message):
    """Clear the log file."""
    log_file = "logs.txt"
    
    try:
        with open(log_file, "w") as f:
            f.write("")
        await message.reply_text("✅ Log file cleared.", quote=True)
    except Exception as e:
        await message.reply_text(f"❌ Error clearing logs: `{str(e)}`", quote=True)

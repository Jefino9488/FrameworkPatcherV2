from pyrogram import filters, enums, Client
from pyrogram.types import Message

from Framework import bot
from Framework.helpers.state import *
from Framework.helpers.decorators import owner
from Framework.helpers.utils import *
from Framework.helpers.processes import *
from Framework.helpers.logger import LOGGER

@bot.on_message(filters.command("status"))
@owner
async def bot_status(client: Client, message: Message):
    """Show bot status and process information"""
    try:
        # Get bot processes
        processes = await get_bot_processes()

        # Get system info
        memory_info = psutil.virtual_memory()
        disk_info = psutil.disk_usage('/')

        status_text = f"""
🤖 <b>Bot Status</b>

📊 <b>Processes:</b> {len(processes)} running
🆔 <b>Current PID:</b> {bot_process_id}
🔄 <b>Update Status:</b> {'In Progress' if update_in_progress else 'Idle'}

💾 <b>Memory:</b> {memory_info.percent}% used ({memory_info.used // 1024 // 1024}MB / {memory_info.total // 1024 // 1024}MB)
💿 <b>Disk:</b> {disk_info.percent}% used ({disk_info.used // 1024 // 1024 // 1024}GB / {disk_info.total // 1024 // 1024 // 1024}GB)

👥 <b>Active Users:</b> {len(user_states)}
🔗 <b>Connection:</b> {'Healthy' if await check_connection_health() else 'Issues detected'}

⏰ <b>Uptime:</b> {time.time() - last_connection_check:.0f} seconds since last check
"""

        if processes:
            status_text += "\n📋 <b>Bot Processes:</b>\n"
            for proc in processes:
                try:
                    status_text += f"• PID {proc.pid}: {proc.status()}\n"
                except:
                    status_text += f"• PID {proc.pid}: Unknown status\n"

        await message.reply_text(status_text, parse_mode=enums.ParseMode.HTML)

    except Exception as e:
        LOGGER.error(f"Error in status command: {e}", exc_info=True)
        await message.reply_text(f"❌ Status check failed: {str(e)}")

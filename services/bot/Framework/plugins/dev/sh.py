from pyrogram import filters, Client, enums
from pyrogram.types import Message

from Framework.helpers.decorators import owner
from Framework.helpers.shell import run_shell_cmd
from Framework import bot

@bot.on_message(filters.private & filters.command("sh"))
@owner
async def shell_handler(bot: Client, message: Message):
    cmd = message.text.split(None, 1)
    if len(cmd) < 2:
        await message.reply_text("Usage: `/sh <command>`", quote=True, parse_mode=enums.ParseMode.MARKDOWN)
        return
    cmd = cmd[1]
    if not cmd:
        await message.reply_text("Usage: `/sh <command>`", quote=True)
        return

    reply = await message.reply_text("Executing...", quote=True)
    try:
        output = await run_shell_cmd(cmd)
    except Exception as e:
        await reply.edit_text(f"Error:\n`{str(e)}`")
        return

    if not output.strip():
        output = "Command executed with no output."

    if len(output) > 4000:
        output = output[:4000] + "\n\nOutput truncated..."

    await reply.edit_text(f"**$ {cmd}**\n\n```{output}```")

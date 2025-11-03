import os
from pyrogram import filters, Client, enums
from pyrogram.types import Message

from Framework.helpers.decorators import owner
from Framework.helpers.logger import LOGGER
from Framework.helpers.shell import run_shell_cmd
from Framework import bot

@bot.on_message(filters.command("deploy"))
@owner
async def deploy_new_bot(client: Client, message: Message):
    """Deploy the new bot version from GitHub"""
    reply = await message.reply_text("🚀 Deploying new bot version...")

    try:
        # Create deployment script
        script_path = os.path.abspath(__file__)
        project_root = os.path.dirname(os.path.dirname(script_path))

        deploy_script = f"""#!/bin/bash
cd {project_root}

echo "🔄 Stopping current bot processes..."
pkill -f "bot.py" || true
sleep 3

echo "📥 Pulling latest changes..."
git fetch origin master
git reset --hard origin/master
git clean -fd

echo "📦 Installing dependencies..."
pip install -r requirements.txt

echo "🚀 Starting new bot..."
nohup python {script_path} > bot.log 2>&1 &
echo $! > bot.pid

echo "✅ Deployment complete!"
"""

        # Write and execute deployment script
        with open("/tmp/deploy_bot.sh", "w") as f:
            f.write(deploy_script)

        os.chmod("/tmp/deploy_bot.sh", 0o755)

        await reply.edit_text("🚀 Executing deployment script...")

        # Execute deployment
        output = await run_shell_cmd("/tmp/deploy_bot.sh")

        await reply.edit_text(
            f"✅ <b>Deployment Complete!</b>\n\n"
            f"<code>{output}</code>",
            parse_mode=enums.ParseMode.HTML
        )

    except Exception as e:
        LOGGER.error(f"Error in deploy command: {e}", exc_info=True)
        await reply.edit_text(f"❌ Deployment failed: {str(e)}")

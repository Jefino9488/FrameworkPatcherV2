from Framework.helpers.logger import LOGGER
from Framework.helpers.shell import run_shell_cmd
import os

async def backup_current_state():
    """Create a backup of current bot state before updating."""
    try:
        backup_dir = "/tmp/bot_backup"
        os.makedirs(backup_dir, exist_ok=True)

        # Backup current session
        session_file = "FrameworkPatcherBot.session"
        if os.path.exists(session_file):
            await run_shell_cmd(f"cp {session_file} {backup_dir}/")

        # Backup logs
        await run_shell_cmd(f"cp -r logs {backup_dir}/ 2>/dev/null || true")

        LOGGER.info("Bot state backup completed")
        return True
    except Exception as e:
        LOGGER.error(f"Failed to backup bot state: {e}")
        return False
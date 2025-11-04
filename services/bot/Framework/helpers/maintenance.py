from Framework.helpers.logger import LOGGER
from Framework.helpers.state import *
from Framework import bot

async def notify_users_maintenance():
    """Notify users about maintenance."""
    try:
        # Get list of recent users from user_states
        recent_users = list(user_states.keys())

        for user_id in recent_users[-10:]:  # Notify last 10 users
            try:
                await bot.send_message(
                    user_id,
                    "🔧 Bot is being updated. Please wait a moment and try again in a few minutes.\n\n"
                    "The update will be completed automatically. Thank you for your patience!"
                )
            except Exception:
                pass  # Ignore errors for individual users

    except Exception as e:
        LOGGER.error(f"Error notifying users about maintenance: {e}")

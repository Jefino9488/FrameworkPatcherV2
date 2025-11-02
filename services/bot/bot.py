import asyncio
import html
import logging
import os
import sys
import time
import httpx
import psutil
from dotenv import load_dotenv
from git import Repo
from pyrogram import Client, filters, idle
from pyrogram.enums import ParseMode
from pyrogram.errors import FloodWait, NetworkMigrate, AuthKeyUnregistered
from pyrogram.types import InlineKeyboardMarkup, InlineKeyboardButton, Message, CallbackQuery

from shell import run_shell_cmd
import provider

# Load environment variables from .env file
load_dotenv()

REPO = Repo(os.path.dirname(os.path.dirname(os.path.dirname(__file__))))

# --- Environment Variables ---
try:
    BOT_TOKEN = os.environ["BOT_TOKEN"]
    API_ID = int(os.environ["API_ID"])
    API_HASH = os.environ["API_HASH"]
    PIXELDRAIN_API_KEY = os.environ["PIXELDRAIN_API_KEY"]
    GITHUB_TOKEN = os.environ["GITHUB_TOKEN"]
    GITHUB_OWNER = os.environ["GITHUB_OWNER"]
    GITHUB_REPO = os.environ["GITHUB_REPO"]
    WORKFLOW_ID = os.environ["GITHUB_WORKFLOW_ID"]
    WORKFLOW_ID_A15 = os.getenv("GITHUB_WORKFLOW_ID_A15")
    WORKFLOW_ID_A16 = os.getenv("GITHUB_WORKFLOW_ID_A16")
    OWNER_ID = int(os.getenv("OWNER_ID", "0"))
except KeyError as e:
    raise ValueError(f"Missing environment variable: {e}. Please check your .env file.")
except ValueError as e:
    raise ValueError(f"Invalid environment variable value: {e}. Ensure API_ID is an integer.")

# --- Pyrogram Client Initialization ---
Bot = Client(
    "FrameworkPatcherBot",
    bot_token=BOT_TOKEN,
    api_id=API_ID,
    api_hash=API_HASH
)
# --- Global Rate Limit Tracker ---
user_rate_limits = {}

# --- Bot Texts & Buttons ---
START_TEXT = """Hello {},
Ready to patch some frameworks? Send `/start_patch` to begin the process of uploading JAR files and triggering the GitHub workflow."""

BUTTON1 = InlineKeyboardButton(text="Jefino9488", url="https://t.me/Jefino9488")
BUTTON2 = InlineKeyboardButton(text="Support Group", url="https://t.me/codes9488")
BUTTON_SUPPORT = InlineKeyboardButton(text="Support me", url="https://buymeacoffee.com/jefino")

# --- Logging Setup ---
logging.basicConfig(
    format="%(asctime)s - %(name)s - %(levelname)s - %(message)s", level=logging.INFO
)
logging.getLogger("httpx").setLevel(logging.WARNING)
logger = logging.getLogger(__name__)

# --- Global State Management for Conversation ---
user_states = {}
connection_retries = {}
last_connection_check = time.time()
bot_process_id = os.getpid()
update_in_progress = False

# --- Conversation States (Constants) ---
STATE_NONE = 0
STATE_WAITING_FOR_API = 1
STATE_WAITING_FOR_FEATURES = 2
STATE_WAITING_FOR_FILES = 3
STATE_WAITING_FOR_DEVICE_CODENAME = 4
STATE_WAITING_FOR_VERSION_SELECTION = 5


# --- Connection Health Monitoring ---
async def check_connection_health() -> bool:
    """Check if the bot connection is healthy."""
    try:
        me = await Bot.get_me()
        return me is not None
    except Exception as e:
        logger.error(f"Connection health check failed: {e}")
        return False


async def ensure_connection(func, *args, **kwargs):
    """Ensure connection is healthy before executing function."""
    max_retries = 3
    retry_delay = 2

    for attempt in range(max_retries):
        try:
            if await check_connection_health():
                return await func(*args, **kwargs)
            else:
                logger.warning(f"Connection unhealthy, attempt {attempt + 1}/{max_retries}")
                await asyncio.sleep(retry_delay * (attempt + 1))
        except (NetworkMigrate, AuthKeyUnregistered) as e:
            logger.error(f"Connection error on attempt {attempt + 1}: {e}")
            if attempt < max_retries - 1:
                await asyncio.sleep(retry_delay * (attempt + 1))
            else:
                raise e
        except FloodWait as e:
            logger.warning(f"Flood wait: {e.value} seconds")
            await asyncio.sleep(e.value)
        except Exception as e:
            logger.error(f"Unexpected error on attempt {attempt + 1}: {e}")
            if attempt < max_retries - 1:
                await asyncio.sleep(retry_delay * (attempt + 1))
            else:
                raise e

    raise Exception("Failed to establish connection after multiple attempts")


# --- Auto-Update and Process Management Functions ---

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

        logger.info("Bot state backup completed")
        return True
    except Exception as e:
        logger.error(f"Failed to backup bot state: {e}")
        return False


async def get_bot_processes():
    """Get all bot processes running."""
    try:
        processes = []
        for proc in psutil.process_iter(['pid', 'name', 'cmdline']):
            try:
                if 'python' in proc.info['name'].lower():
                    cmdline = ' '.join(proc.info['cmdline']) if proc.info['cmdline'] else ''
                    if 'bot.py' in cmdline or 'FrameworkPatcherBot' in cmdline:
                        processes.append(proc)
            except (psutil.NoSuchProcess, psutil.AccessDenied):
                continue
        return processes
    except Exception as e:
        logger.error(f"Error getting bot processes: {e}")
        return []


async def graceful_shutdown():
    """Gracefully shutdown the bot."""
    global update_in_progress
    update_in_progress = True

    try:
        logger.info("Starting graceful shutdown...")

        # Notify users about maintenance
        await notify_users_maintenance()

        # Wait a bit for ongoing operations to complete
        await asyncio.sleep(5)

        # Stop the bot
        await Bot.stop()
        logger.info("Bot stopped gracefully")

    except Exception as e:
        logger.error(f"Error during graceful shutdown: {e}")


async def notify_users_maintenance():
    """Notify users about maintenance."""
    try:
        # Get list of recent users from user_states
        recent_users = list(user_states.keys())

        for user_id in recent_users[-10:]:  # Notify last 10 users
            try:
                await Bot.send_message(
                    user_id,
                    "🔧 Bot is being updated. Please wait a moment and try again in a few minutes.\n\n"
                    "The update will be completed automatically. Thank you for your patience!"
                )
            except Exception:
                pass  # Ignore errors for individual users

    except Exception as e:
        logger.error(f"Error notifying users about maintenance: {e}")


async def restart_bot_process():
    """Restart the bot process."""
    try:
        logger.info("Restarting bot process...")

        # Get current script path
        script_path = os.path.abspath(__file__)

        # Create restart script
        restart_script = f"""
#!/bin/bash
cd {os.path.dirname(os.path.dirname(script_path))}
sleep 5
nohup python {script_path} > bot.log 2>&1 &
echo $! > bot.pid
"""

        # Write and execute restart script
        with open("/tmp/restart_bot.sh", "w") as f:
            f.write(restart_script)

        os.chmod("/tmp/restart_bot.sh", 0o755)
        await run_shell_cmd("/tmp/restart_bot.sh")

        logger.info("Bot restart initiated")

    except Exception as e:
        logger.error(f"Error restarting bot process: {e}")


async def check_for_updates() -> tuple[bool, str]:
    """Check for updates from GitHub repository."""
    try:
        # Fetch latest changes
        await asyncio.to_thread(REPO.git.fetch, 'origin', 'master')

        # Check for new commits
        commits_list = list(REPO.iter_commits("HEAD..origin/master"))

        if commits_list:
            commits_info = []
            for commit in commits_list[:5]:  # Show last 5 commits
                commits_info.append(f"• {commit.message.strip()[:50]}...")

            return True, "\n".join(commits_info)
        else:
            return False, "No updates available"

    except Exception as e:
        logger.error(f"Error checking for updates: {e}")
        return False, f"Error checking updates: {str(e)}"


async def perform_update():
    """Perform the actual update process."""
    try:
        logger.info("Starting update process...")

        # Create backup
        await backup_current_state()

        # Pull latest changes
        await asyncio.to_thread(REPO.git.reset, '--hard')
        await asyncio.to_thread(REPO.git.clean, '-fd')
        await asyncio.to_thread(REPO.git.pull, 'origin', 'master')

        # Install/update dependencies
        await run_shell_cmd("pip install -r requirements.txt")

        logger.info("Update completed successfully")
        return True

    except Exception as e:
        logger.error(f"Error during update: {e}")
        return False


# --- Helper Functions for PixelDrain and Formatting ---

# inside upload_file_stream()

async def upload_file_stream(file_path: str, pixeldrain_api_key: str) -> tuple:
    """Upload file to PixelDrain with improved timeout and retry handling."""
    logs = []
    response_data = None
    max_attempts = 5
    base_timeout = 120  # Increased base timeout

    for attempt in range(max_attempts):
        try:
            # Progressive timeout increase
            timeout = base_timeout + (attempt * 30)
            logger.info(f"Upload attempt {attempt + 1}/{max_attempts} with timeout {timeout}s")

            # Enhanced HTTP client configuration
            limits = httpx.Limits(
                max_keepalive_connections=5,
                max_connections=10,
                keepalive_expiry=30.0
            )

            async with httpx.AsyncClient(
                    timeout=httpx.Timeout(
                        connect=30.0,
                        read=timeout,
                        write=timeout,
                        pool=10.0
                    ),
                    limits=limits,
                    follow_redirects=True
            ) as client:
                with open(file_path, "rb") as file:
                    file_size = os.path.getsize(file_path)
                    files = {"file": (os.path.basename(file_path), file, "application/octet-stream")}

                    logs.append(f"Uploading {os.path.basename(file_path)} ({file_size} bytes) to PixelDrain...")
                    
                    response = await client.post(
                        "https://pixeldrain.com/api/file",
                        files=files,
                        auth=("", pixeldrain_api_key),
                        headers={
                            "User-Agent": "FrameworkPatcherBot/1.0",
                            "Accept": "application/json"
                        }
                    )
                    response.raise_for_status()

            logs.append("Uploaded Successfully to PixelDrain")
            response_data = response.json()
            logger.info(f"Upload successful on attempt {attempt + 1}")
            break

        except httpx.TimeoutException as e:
            error_msg = f"Upload timeout on attempt {attempt + 1}: {e}"
            logger.error(error_msg)
            logs.append(error_msg)
            if attempt == max_attempts - 1:
                response_data = {"error": f"Upload failed after {max_attempts} attempts due to timeout"}
            
        except httpx.RequestError as e:
            error_msg = f"HTTPX Request error during PixelDrain upload (attempt {attempt + 1}): {type(e).__name__}: {e}"
            logger.error(error_msg)
            logs.append(error_msg)
            if attempt == max_attempts - 1:
                response_data = {"error": f"Upload failed after {max_attempts} attempts: {str(e)}"}

        except httpx.HTTPStatusError as e:
            error_msg = f"HTTP error {e.response.status_code} on attempt {attempt + 1}: {e.response.text}"
            logger.error(error_msg)
            logs.append(error_msg)
            if e.response.status_code in [429, 502, 503, 504]:  # Retry on these status codes
                if attempt < max_attempts - 1:
                    wait_time = min(2 ** attempt, 30)  # Exponential backoff, max 30s
                    logs.append(f"Retrying in {wait_time} seconds...")
                    await asyncio.sleep(wait_time)
                    continue
            response_data = {"error": f"HTTP {e.response.status_code}: {e.response.text}"}
            break

        except Exception as e:
            error_msg = f"Unexpected error during PixelDrain upload (attempt {attempt + 1}): {type(e).__name__}: {e}"
            logger.error(error_msg, exc_info=True)
            logs.append(error_msg)
            if attempt == max_attempts - 1:
                response_data = {"error": f"Upload failed after {max_attempts} attempts: {str(e)}"}

        # Wait before retry (except on last attempt)
        if attempt < max_attempts - 1:
            wait_time = min(2 ** attempt, 30)  # Exponential backoff, max 30s
            logs.append(f"Retrying in {wait_time} seconds...")
            await asyncio.sleep(wait_time)

    # Clean up file
    if os.path.exists(file_path):
        try:
            os.remove(file_path)
            logs.append("Temporary file cleaned up")
        except Exception as e:
            logger.error(f"Failed to remove temporary file {file_path}: {e}")
    
    return response_data, logs


def _select_workflow_id(api_level: str) -> str:
    # Prefer specific workflow IDs if provided, fallback to default WORKFLOW_ID
    if api_level == "36":
        return WORKFLOW_ID_A16 or "android16.yml" or WORKFLOW_ID
    if api_level == "35":
        return WORKFLOW_ID_A15 or "android15.yml" or WORKFLOW_ID
    return WORKFLOW_ID


async def trigger_github_workflow_async(links: dict, device_name: str, version_name: str, api_level: str,
                                        user_id: int, features: dict = None) -> int:
    """Trigger GitHub workflow with improved error handling and retry logic."""
    workflow_id = _select_workflow_id(api_level)
    url = f"https://api.github.com/repos/{GITHUB_OWNER}/{GITHUB_REPO}/actions/workflows/{workflow_id}/dispatches"

    headers = {
        "Authorization": f"token {GITHUB_TOKEN}",
        "Accept": "application/vnd.github.v3+json",
        "User-Agent": "FrameworkPatcherBot/1.0"
    }

    # Default features if not provided
    if features is None:
        features = {
            "enable_signature_bypass": True,
            "enable_cn_notification_fix": False,
            "enable_disable_secure_flag": False
        }
    
    data = {
        "ref": "master",
        "inputs": {
            "api_level": api_level,
            "device_name": device_name,
            "version_name": version_name,
            "framework_url": links.get("framework.jar"),
            "services_url": links.get("services.jar"),
            "miui_services_url": links.get("miui-services.jar"),
            "user_id": str(user_id),
            "enable_signature_bypass": str(features.get("enable_signature_bypass", True)).lower(),
            "enable_cn_notification_fix": str(features.get("enable_cn_notification_fix", False)).lower(),
            "enable_disable_secure_flag": str(features.get("enable_disable_secure_flag", False)).lower()
        }
    }

    logger.info(
        f"Attempting to dispatch GitHub workflow to {url} for device {device_name} version {version_name} for user {user_id}")

    max_attempts = 3
    base_timeout = 60

    for attempt in range(max_attempts):
        try:
            timeout = base_timeout + (attempt * 20)
            logger.info(f"GitHub workflow trigger attempt {attempt + 1}/{max_attempts} with timeout {timeout}s")

            async with httpx.AsyncClient(
                    timeout=httpx.Timeout(
                        connect=20.0,
                        read=timeout,
                        write=timeout,
                        pool=10.0
                    ),
                    limits=httpx.Limits(max_connections=5, max_keepalive_connections=2)
            ) as client:
                resp = await client.post(url, json=data, headers=headers)
                resp.raise_for_status()

                logger.info(f"GitHub workflow triggered successfully on attempt {attempt + 1}")
                return resp.status_code

        except httpx.TimeoutException as e:
            logger.error(f"GitHub API timeout on attempt {attempt + 1}: {e}")
            if attempt == max_attempts - 1:
                raise e

        except httpx.HTTPStatusError as e:
            logger.error(f"GitHub API error {e.response.status_code} on attempt {attempt + 1}: {e.response.text}")
            if e.response.status_code in [429, 502, 503, 504]:  # Retry on these status codes
                if attempt < max_attempts - 1:
                    wait_time = min(2 ** attempt, 30)
                    logger.info(f"Retrying GitHub API call in {wait_time} seconds...")
                    await asyncio.sleep(wait_time)
                    continue
            raise e

        except httpx.RequestError as e:
            logger.error(f"GitHub API request error on attempt {attempt + 1}: {e}")
            if attempt < max_attempts - 1:
                wait_time = min(2 ** attempt, 30)
                logger.info(f"Retrying GitHub API call in {wait_time} seconds...")
                await asyncio.sleep(wait_time)
                continue
            raise e

        except Exception as e:
            logger.error(f"Unexpected error triggering GitHub workflow on attempt {attempt + 1}: {e}", exc_info=True)
            if attempt < max_attempts - 1:
                wait_time = min(2 ** attempt, 30)
                logger.info(f"Retrying GitHub API call in {wait_time} seconds...")
                await asyncio.sleep(wait_time)
                continue
            raise e

        # Wait before retry (except on last attempt)
        if attempt < max_attempts - 1:
            wait_time = min(2 ** attempt, 30)
            logger.info(f"Retrying GitHub API call in {wait_time} seconds...")
            await asyncio.sleep(wait_time)

    raise Exception("Failed to trigger GitHub workflow after all attempts")


def get_id(text: str) -> str | None:
    """Extracts PixelDrain ID from a URL or raw ID."""
    if text.startswith("http"):
        if text.endswith("/"):
            id_part = text.split("/")[-2]
        else:
            id_part = text.split("/")[-1]
        if len(id_part) > 5 and all(c.isalnum() or c == '-' for c in id_part):
            return id_part
        return None
    elif "/" not in text and len(text) > 5:
        return text
    return None


def format_size(size: int) -> str:
    """Formats file size into human-readable string."""
    if size < 1024:
        return f"{size} B"
    elif size < 1024 * 1024:
        return f"{size / 1024:.2f} KB"
    elif size < 1024 * 1024 * 1024:
        return f"{size / (1024 * 1024)::.2f} MB"
    else:
        return f"{size / (1024 * 1024 * 1024)::.2f} GB"


def format_date(date_str: str) -> str:
    """Formats ISO date string."""
    try:
        date, time = date_str.split("T")
        time = time.split(".")[0]
        return f"{date} {time}"
    except (AttributeError, IndexError):
        return date_str


async def send_data(file_id: str, message: Message):
    text = "`Fetching file information...`"
    reply_markup = None
    try:
        async with httpx.AsyncClient(timeout=30) as client:
            response = await client.get(f"https://pixeldrain.com/api/file/{file_id}/info")
            response.raise_for_status()
            data = response.json()
    except httpx.RequestError as e:
        logger.error(f"Error fetching PixelDrain info for {file_id}: {type(e).__name__}: {e}")
        text = f"Failed to retrieve file information: Network error or invalid ID."
        data = None
    except Exception as e:
        logger.error(
            f"An unexpected error occurred while fetching PixelDrain info for {file_id}: {type(e).__name__}: {e}")
        text = "Failed to retrieve file information due to an unexpected error."
        data = None

    if data and data.get("success"):
        text = (
            f"**File Name:** `{data['name']}`\n"
            f"**Upload Date:** `{format_date(data['date_upload'])}`\n"
            f"**File Size:** `{format_size(data['size'])}`\n"
            f"**File Type:** `{data['mime_type']}`\n\n"
            f"\u00A9 [Jefino9488](https://Jefino9488.t.me)"
        )
        reply_markup = InlineKeyboardMarkup(
            [
                [
                    InlineKeyboardButton(
                        text="Open Link",
                        url=f"https://pixeldrain.com/u/{file_id}"
                    ),
                    InlineKeyboardButton(
                        text="Direct Link",
                        url=f"https://pixeldrain.com/api/file/{file_id}"
                    )
                ],
                [
                    InlineKeyboardButton(
                        text="Share Link",
                        url=f"https://telegram.me/share/url?url=https://pixeldrain.com/u/{file_id}"
                    )
                ],
                [BUTTON2]
            ]
        )
    else:
        text = f"Could not find information for ID: `{file_id}`. It might be invalid or deleted."

    await message.edit_text(
        text=text,
        reply_markup=reply_markup,
        disable_web_page_preview=True
    )


# --- Pyrogram Handlers ---

@Bot.on_message(filters.private & filters.command("start"))
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
        logger.error(f"Error in start command handler: {e}")
        try:
            await message.reply_text("Sorry, I'm experiencing connection issues. Please try again later.", quote=True)
        except:
            pass


@Bot.on_message(filters.private & filters.command("start_patch"))
async def start_patch_command(bot: Client, message: Message):
    """Initiates the framework patching conversation."""
    user_id = message.from_user.id
    # Initialize state and prompt for Android version selection
    user_states[user_id] = {
        "state": STATE_WAITING_FOR_API,
        "files": {},
        "device_name": None,
        "version_name": None,
        "api_level": None,
        "features": {
            "enable_signature_bypass": False,
            "enable_cn_notification_fix": False,
            "enable_disable_secure_flag": False
        }
    }
    await message.reply_text(
        "🚀 Let's start the framework patching process!\n\n"
        "First, choose Android version to patch:",
        reply_markup=InlineKeyboardMarkup(
            [
                [
                    InlineKeyboardButton("📱 Android 15 (API 35)", callback_data="api_35"),
                    InlineKeyboardButton("📱 Android 16 (API 36)", callback_data="api_36"),
                ]
            ]
        ),
        quote=True,
    )


@Bot.on_callback_query(filters.regex(r"^api_(35|36)$"))
async def api_selection_handler(bot: Client, query: CallbackQuery):
    user_id = query.from_user.id
    if user_id not in user_states or user_states[user_id].get("state") != STATE_WAITING_FOR_API:
        await query.answer("Not expecting version selection.", show_alert=True)
        return
    api_choice = query.data.split("_", 1)[1]
    user_states[user_id]["api_level"] = api_choice
    user_states[user_id]["state"] = STATE_WAITING_FOR_FEATURES
    
    await query.message.edit_text(
        f"✅ Android {'15' if api_choice == '35' else '16'} selected!\n\n"
        "Now, choose which features to apply:",
        reply_markup=InlineKeyboardMarkup(
            [
                [InlineKeyboardButton("✓ Disable Signature Verification", callback_data="feature_signature")],
                [InlineKeyboardButton("☐ CN Notification Fix", callback_data="feature_cn_notif")],
                [InlineKeyboardButton("☐ Disable Secure Flag", callback_data="feature_secure_flag")],
                [InlineKeyboardButton("➡️ Continue with selected features", callback_data="features_done")]
            ]
        )
    )
    await query.answer("Version selected.")


@Bot.on_callback_query(filters.regex(r"^feature_(signature|cn_notif|secure_flag)$"))
async def feature_toggle_handler(bot: Client, query: CallbackQuery):
    """Handles toggling features on/off."""
    user_id = query.from_user.id
    if user_id not in user_states or user_states[user_id].get("state") != STATE_WAITING_FOR_FEATURES:
        await query.answer("Not expecting feature selection.", show_alert=True)
        return
    
    feature_map = {
        "feature_signature": "enable_signature_bypass",
        "feature_cn_notif": "enable_cn_notification_fix",
        "feature_secure_flag": "enable_disable_secure_flag"
    }
    
    feature_key = feature_map.get(query.data)
    if feature_key:
        # Toggle feature
        user_states[user_id]["features"][feature_key] = not user_states[user_id]["features"][feature_key]
    
    # Update button display
    features = user_states[user_id]["features"]
    buttons = [
        [InlineKeyboardButton(
            f"{'✓' if features['enable_signature_bypass'] else '☐'} Disable Signature Verification",
            callback_data="feature_signature"
        )],
        [InlineKeyboardButton(
            f"{'✓' if features['enable_cn_notification_fix'] else '☐'} CN Notification Fix",
            callback_data="feature_cn_notif"
        )],
        [InlineKeyboardButton(
            f"{'✓' if features['enable_disable_secure_flag'] else '☐'} Disable Secure Flag",
            callback_data="feature_secure_flag"
        )],
        [InlineKeyboardButton("➡️ Continue with selected features", callback_data="features_done")]
    ]
    
    await query.message.edit_reply_markup(InlineKeyboardMarkup(buttons))
    await query.answer(f"Feature {'enabled' if user_states[user_id]['features'][feature_key] else 'disabled'}")


@Bot.on_callback_query(filters.regex(r"^features_done$"))
async def features_done_handler(bot: Client, query: CallbackQuery):
    """Handles when user is done selecting features."""
    user_id = query.from_user.id
    if user_id not in user_states or user_states[user_id].get("state") != STATE_WAITING_FOR_FEATURES:
        await query.answer("Not expecting feature confirmation.", show_alert=True)
        return
    
    features = user_states[user_id]["features"]
    
    # Check if at least one feature is selected
    if not any(features.values()):
        await query.answer("⚠️ Please select at least one feature!", show_alert=True)
        return
    
    # Build features summary
    selected_features = []
    if features["enable_signature_bypass"]:
        selected_features.append("✓ Signature Verification Bypass")
    if features["enable_cn_notification_fix"]:
        selected_features.append("✓ CN Notification Fix")
    if features["enable_disable_secure_flag"]:
        selected_features.append("✓ Disable Secure Flag")
    
    features_text = "\n".join(selected_features)
    
    user_states[user_id]["state"] = STATE_WAITING_FOR_FILES
    await query.message.edit_text(
        f"✅ Features selected:\n\n{features_text}\n\n"
        "Now, please send all 3 JAR files:\n"
        "• framework.jar\n"
        "• services.jar\n"
        "• miui-services.jar"
    )
    await query.answer("Features confirmed!")


@Bot.on_callback_query(filters.regex(r"^ver_(\d+|showall)$"))
async def version_selection_handler(bot: Client, query: CallbackQuery):
    """Handles version selection from inline keyboard."""
    user_id = query.from_user.id
    if user_id not in user_states or user_states[user_id].get("state") != STATE_WAITING_FOR_VERSION_SELECTION:
        await query.answer("Not expecting version selection.", show_alert=True)
        return

    data = query.data.split("_", 1)[1]

    # Handle "Show All" button
    if data == "showall":
        software_data = user_states[user_id]["software_data"]
        miui_roms = software_data.get("miui_roms", [])
        device_name = user_states[user_id]["device_name"]

        # Create text list of all versions
        version_list = []
        for idx, rom in enumerate(miui_roms):
            version = rom.get('version') or rom.get('miui', 'Unknown')
            android = rom.get('android', '?')
            version_list.append(f"{idx + 1}. {version} (Android {android})")

        versions_text = "\n".join(version_list[:30])  # Limit to 30 to avoid message length issues
        if len(miui_roms) > 30:
            versions_text += f"\n\n... and {len(miui_roms) - 30} more versions"

        await query.message.edit_text(
            f"📋 **All Available Versions for {device_name}:**\n\n{versions_text}\n\n"
            f"Please type the version number (1-{len(miui_roms)}) or version name to select.",
        )
        await query.answer("Showing all versions")
        return

    # Handle version selection by index
    try:
        version_idx = int(data)
        software_data = user_states[user_id]["software_data"]
        miui_roms = software_data.get("miui_roms", [])

        if version_idx >= len(miui_roms):
            await query.answer("Invalid version selection!", show_alert=True)
            return

        selected_rom = miui_roms[version_idx]
        version_name = selected_rom.get('version') or selected_rom.get('miui', 'Unknown')
        android_version = selected_rom.get('android')

        # Validate Android version
        if not android_version:
            await query.answer("⚠️ Android version not found for this ROM!", show_alert=True)
            return

        android_int = int(android_version)
        if android_int < 13:
            await query.answer(
                f"⚠️ Android {android_version} is not supported. Minimum required: Android 13",
                show_alert=True
            )
            return

        # Get API level
        api_level = provider.android_version_to_api_level(android_version)

        # Store version info
        user_states[user_id]["version_name"] = version_name
        user_states[user_id]["android_version"] = android_version
        user_states[user_id]["api_level"] = api_level

        # Check daily rate limit
        from datetime import datetime
        today = datetime.now().date()
        triggers = user_rate_limits.get(user_id, [])
        triggers = [t for t in triggers if t.date() == today]

        if len(triggers) >= 3:
            await query.message.edit_text(
                "❌ You have reached the daily limit of 3 workflow triggers. Try again tomorrow."
            )
            user_states.pop(user_id, None)
            await query.answer("Daily limit reached!")
            return

        # Trigger workflow
        await query.message.edit_text("⏳ Triggering GitHub workflow...")

        try:
            links = user_states[user_id]["files"]
            device_name = user_states[user_id]["device_name"]
            features = user_states[user_id].get("features", {
                "enable_signature_bypass": True,
                "enable_cn_notification_fix": False,
                "enable_disable_secure_flag": False
            })

            status = await trigger_github_workflow_async(links, device_name, version_name, api_level, user_id, features)
            triggers.append(datetime.now())
            user_rate_limits[user_id] = triggers

            # Build features summary for confirmation
            selected_features = []
            if features.get("enable_signature_bypass"):
                selected_features.append("✓ Signature Verification Bypass")
            if features.get("enable_cn_notification_fix"):
                selected_features.append("✓ CN Notification Fix")
            if features.get("enable_disable_secure_flag"):
                selected_features.append("✓ Disable Secure Flag")

            features_summary = "\n".join(selected_features) if selected_features else "Default features"

            await query.message.edit_text(
                f"✅ **Workflow triggered successfully!**\n\n"
                f"📱 **Device:** {device_name}\n"
                f"📦 **Version:** {version_name}\n"
                f"🤖 **Android:** {android_version} (API {api_level})\n\n"
                f"**Features Applied:**\n{features_summary}\n\n"
                f"⏳ You will receive a notification when the process is complete.\n\n"
                f"Daily triggers used: {len(triggers)}/3"
            )
            await query.answer("Workflow triggered!")

        except httpx.HTTPStatusError as e:
            logger.error(
                f"GitHub workflow trigger failed for user {user_id}: HTTP Error {e.response.status_code} - {e.response.text}",
                exc_info=True)
            await query.message.edit_text(
                f"❌ **Error triggering workflow:**\n\n"
                f"GitHub API returned status {e.response.status_code}\n"
                f"Response: `{e.response.text}`"
            )
            await query.answer("Workflow trigger failed!", show_alert=True)

        except Exception as e:
            logger.error(f"Error triggering workflow for user {user_id}: {e}", exc_info=True)
            await query.message.edit_text(
                f"❌ **An unexpected error occurred:**\n\n`{e}`"
            )
            await query.answer("Workflow trigger failed!", show_alert=True)

        finally:
            user_states.pop(user_id, None)

    except ValueError:
        await query.answer("Invalid version selection!", show_alert=True)


@Bot.on_message(filters.private & filters.command("cancel"))
async def cancel_command(bot: Client, message: Message):
    """Cancels the current operation and resets the user's state."""
    user_id = message.from_user.id
    if user_id in user_states:
        user_states.pop(user_id)
        await message.reply_text("Operation cancelled. You can /start_patch again.", quote=True)
    else:
        await message.reply_text("No active operation to cancel.", quote=True)


@Bot.on_message(filters.private & filters.media)
async def handle_media_upload(bot: Client, message: Message):
    """Handles media uploads for the framework patching process."""
    user_id = message.from_user.id

    if message.from_user.is_bot:
        return

    if user_id not in user_states or user_states[user_id]["state"] != STATE_WAITING_FOR_FILES:
        await message.reply_text(
            "Please use the /start_patch command to begin the file upload process, "
            "or send a Pixeldrain ID/link for file info.",
            quote=True
        )
        return

    if not (message.document and message.document.file_name.endswith(".jar")):
        await message.reply_text("Please send a JAR file.", quote=True)
        return

    file_name = message.document.file_name.lower()

    if file_name not in ["framework.jar", "services.jar", "miui-services.jar"]:
        await message.reply_text(
            "Invalid file name. Please send 'framework.jar', 'services.jar', or 'miui-services.jar'.",
            quote=True
        )
        return

    if file_name in user_states[user_id]["files"]:
        await message.reply_text(f"You have already sent '{file_name}'. Please send the remaining files.", quote=True)
        return

    processing_message = await message.reply_text(
        text=f"`Processing {file_name}...`",
        quote=True,
        disable_web_page_preview=True
    )

    logs = []
    file_path = None

    try:
        await processing_message.edit_text(
            text=f"`Downloading {file_name}...`",
            disable_web_page_preview=True
        )

        # Enhanced download with retry logic
        max_download_attempts = 3
        download_successful = False

        for download_attempt in range(max_download_attempts):
            try:
                logger.info(f"Download attempt {download_attempt + 1}/{max_download_attempts} for {file_name}")
                file_path = await message.download()
                download_successful = True
                logs.append(f"Downloaded {file_name} Successfully")
                break
            except Exception as e:
                logger.error(f"Download attempt {download_attempt + 1} failed for {file_name}: {e}")
                if download_attempt < max_download_attempts - 1:
                    wait_time = 2 ** download_attempt
                    logs.append(f"Download failed, retrying in {wait_time} seconds...")
                    await asyncio.sleep(wait_time)
                else:
                    raise e

        if not download_successful:
            raise Exception("Failed to download file after all attempts")

        dir_name, old_file_name = os.path.split(file_path)
        file_base, file_extension = os.path.splitext(old_file_name)  # Add this line
        renamed_file_name = f"{file_base}_{user_id}_{os.urandom(4).hex()}{file_extension}"
        renamed_file_path = os.path.join(dir_name, renamed_file_name)
        os.rename(file_path, renamed_file_path)
        file_path = renamed_file_path
        logs.append(f"Renamed file to {os.path.basename(file_path)}")

        # Initialize user state if not exists
        if user_id not in user_states:
            user_states[user_id] = {
                "state": STATE_WAITING_FOR_FILES,
                "files": {},
                "device_name": None,
                "version_name": None,
                "api_level": None,
                "features": {
                    "enable_signature_bypass": True,
                    "enable_cn_notification_fix": False,
                    "enable_disable_secure_flag": False
                }
            }
        
        received_count = len(user_states[user_id]["files"]) + 1  # +1 since current file will be counted
        required_files = ["framework.jar", "services.jar", "miui-services.jar"]
        missing_files = [f for f in required_files if f not in user_states[user_id]["files"] and f != file_name]

        await message.reply_text(
            f"Received {file_name}. You have {received_count}/3 files. "
            f"Remaining: {', '.join(missing_files) if missing_files else 'None'}.",
            quote=True
        )

        await processing_message.edit_text(
            text=f"`Uploading {file_name} to PixelDrain...`",
            disable_web_page_preview=True
        )

        response_data, upload_logs = await upload_file_stream(file_path, PIXELDRAIN_API_KEY)
        logs.extend(upload_logs)

        if "error" in response_data:
            await processing_message.edit_text(
                text=f"Error uploading {file_name} to PixelDrain: `{response_data['error']}`\n\nLogs:\n" + '\n'.join(
                    logs),
                disable_web_page_preview=True
            )
            user_states.pop(user_id, None)
            return

        pixeldrain_link = f"https://pixeldrain.com/u/{response_data['id']}"
        user_states[user_id]["files"][file_name] = pixeldrain_link

        received_count = len(user_states[user_id]["files"])
        required_files = ["framework.jar", "services.jar", "miui-services.jar"]
        missing_files = [f for f in required_files if f not in user_states[user_id]["files"]]

        if received_count == 3:
            user_states[user_id]["state"] = STATE_WAITING_FOR_DEVICE_CODENAME
            user_states[user_id]["codename_retry_count"] = 0
            await message.reply_text(
                "✅ All 3 files received and uploaded!\n\n"
                "📱 Please enter the device codename (e.g., rothko, xaga, marble)\n\n"
                "💡 Tip: You can also search for your device name if you don't know the codename.",
                quote=True
            )
        else:
            await message.reply_text(
                f"Received {file_name}. You have {received_count}/3 files. "
                f"Please send the remaining: {', '.join(missing_files)}.",
                quote=True
            )

    except Exception as error:
        logger.error(f"Error in handle_media_upload for user {user_id} and file {file_name}: {error}", exc_info=True)
        await processing_message.edit_text(
            text=f"An error occurred during processing {file_name}: `{error}`\n\nLogs:\n" + '\n'.join(logs),
            disable_web_page_preview=True
        )
        user_states.pop(user_id, None)
    finally:
        if file_path and os.path.exists(file_path):
            os.remove(file_path)


@Bot.on_message(
    filters.private
    & filters.text
    & ~filters.command(["start", "start_patch", "cancel", "update", "sh"]),
    group=10
)
async def handle_text_input(bot: Client, message: Message):
    user_id = message.from_user.id

    if message.from_user.is_bot:
        return

    current_state = user_states.get(user_id, {}).get("state", STATE_NONE)

    if current_state == STATE_WAITING_FOR_DEVICE_CODENAME:
        codename = message.text.strip().lower()

        # Validate codename
        if not provider.is_codename_valid(codename):
            retry_count = user_states[user_id].get("codename_retry_count", 0)
            retry_count += 1
            user_states[user_id]["codename_retry_count"] = retry_count

            if retry_count >= 3:
                await message.reply_text(
                    "❌ Maximum retry attempts reached. Operation cancelled.\n\n"
                    "Please use /start_patch to try again.",
                    quote=True
                )
                user_states.pop(user_id, None)
                return

            # Get similar codenames for suggestions
            similar = provider.get_similar_codenames(codename)
            suggestion_text = ""
            if similar:
                suggestion_text = f"\n\n💡 Did you mean one of these?\n" + "\n".join([f"• `{c}`" for c in similar[:5]])

            await message.reply_text(
                f"❌ Invalid codename: `{codename}`\n\n"
                f"Attempt {retry_count}/3 - Please try again.{suggestion_text}\n\n"
                f"You can also search by device name (e.g., 'Redmi Note 11').",
                quote=True
            )
            return

        # Codename is valid, get device info and versions
        device_info = provider.get_device_by_codename(codename)
        software_data = provider.get_device_software(codename)

        if not software_data or (not software_data.get("miui_roms") and not software_data.get("firmware_versions")):
            await message.reply_text(
                f"❌ No software versions found for device: **{device_info['name']}** (`{codename}`)\n\n"
                "This device may not be supported yet. Please try another device.",
                quote=True
            )
            user_states[user_id]["state"] = STATE_WAITING_FOR_DEVICE_CODENAME
            return

        # Store device info
        user_states[user_id]["device_codename"] = codename
        user_states[user_id]["device_name"] = device_info["name"]
        user_states[user_id]["software_data"] = software_data
        user_states[user_id]["state"] = STATE_WAITING_FOR_VERSION_SELECTION

        # Build version list
        miui_roms = software_data.get("miui_roms", [])

        if not miui_roms:
            await message.reply_text(
                f"❌ No MIUI ROM versions found for **{device_info['name']}**\n\n"
                "Please try another device.",
                quote=True
            )
            user_states[user_id]["state"] = STATE_WAITING_FOR_DEVICE_CODENAME
            return

        # Create inline keyboard with version options (limit to first 10)
        buttons = []
        for idx, rom in enumerate(miui_roms[:10]):
            version = rom.get('version') or rom.get('miui', 'Unknown')
            android = rom.get('android', '?')
            button_text = f"{version} (Android {android})"
            buttons.append([InlineKeyboardButton(button_text, callback_data=f"ver_{idx}")])

        # Add "Show More" button if there are more than 10 versions
        if len(miui_roms) > 10:
            buttons.append([InlineKeyboardButton(f"📋 Show All ({len(miui_roms)} versions)", callback_data="ver_showall")])

        await message.reply_text(
            f"✅ Device found: **{device_info['name']}** (`{codename}`)\n\n"
            f"📦 Found {len(miui_roms)} MIUI ROM version(s)\n\n"
            f"Please select a version:",
            reply_markup=InlineKeyboardMarkup(buttons),
            quote=True
        )

    elif current_state == STATE_NONE:
        try:
            file_id = get_id(message.text)
            if message.text.strip().startswith("/sh"):
                # Ignore /sh commands here; they are handled by the shell handler
                return
            if file_id:
                info_message = await message.reply_text(
                    text="`Processing...`",
                    quote=True,
                    disable_web_page_preview=True
                )
                await send_data(file_id, info_message)
            else:
                await message.reply_text(
                    "I'm not sure what to do with that. Please use `/start_patch` or send a valid PixelDrain link/ID.",
                    quote=True)
        except Exception as e:
            logger.error(f"Error processing PixelDrain info request: {e}", exc_info=True)
            await message.reply_text(f"An error occurred while fetching PixelDrain info: `{e}`", quote=True)
    else:
        await message.reply_text("I'm currently expecting files or specific text input. Use /cancel to restart.",
                                 quote=True)

# --- Group Upload Command ---
@Bot.on_message(filters.group & filters.reply & filters.command("pdup") & filters.user(OWNER_ID))
async def group_upload_command(bot: Client, message: Message):
    """
    Uploads replied media to Pixeldrain.
    """
    if message.from_user.is_bot:  # Ignore messages from bots
        return
    replied_message = message.reply_to_message
    if replied_message and (
            replied_message.photo or replied_message.document or replied_message.video or replied_message.audio):
        # This will still process only one media at a time.
        # For multiple files in a group, users would need to reply to each.
        await handle_media_upload(bot, replied_message)
    else:
        await message.reply_text(
            "Please reply to a valid media message (photo, document, video, or audio) with /pdup to upload.",
            quote=True)


@Bot.on_message(filters.private & filters.command("sh") & filters.user(OWNER_ID))
async def shell_handler(bot: Client, message: Message):
    cmd = message.text.split(None, 1)
    if len(cmd) < 2:
        await message.reply_text("Usage: `/sh <command>`", quote=True, parse_mode=ParseMode.MARKDOWN)
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


@Bot.on_message(filters.command("deploy") & filters.user(OWNER_ID))
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
            parse_mode=ParseMode.HTML
        )

    except Exception as e:
        logger.error(f"Error in deploy command: {e}", exc_info=True)
        await reply.edit_text(f"❌ Deployment failed: {str(e)}")


async def get_commits() -> str | None:
    try:
        # Always fetch from origin/master
        await asyncio.to_thread(REPO.git.fetch, 'origin', 'master')

        commits_list = list(REPO.iter_commits("HEAD..origin/master"))
        logging.info(f"Found {len(commits_list)} commits to pull.")

        if not commits_list:
            return ""

        commits = ""
        for idx, commit in enumerate(commits_list):
            author_name = html.escape(commit.author.name)
            commit_msg = html.escape(commit.message.strip())
            commits += (
                f"<b>{author_name}</b> pushed "
                f"<a href='https://github.com/{GITHUB_OWNER}/{GITHUB_REPO}/commit/{commit}'>{str(commit)[:6]}</a>: "
                f"{commit_msg}\n"
            )
            if idx >= 15:
                break

        return commits
    except Exception as e:
        logging.error(f"Error in get_commits: {e}", exc_info=True)
        return None


async def pull_commits() -> bool:
    """Pull latest changes from GitHub master branch."""
    try:
        # Run git pull in a thread to avoid blocking the event loop
        await asyncio.to_thread(REPO.git.reset, '--hard')  # Ensure local matches remote
        await asyncio.to_thread(REPO.git.clean, '-fd')  # Remove untracked files
        await asyncio.to_thread(REPO.git.pull, 'origin', 'master')
        logging.info("Successfully pulled updates from origin/master.")
        return True
    except Exception as e:
        logging.error(f"Error while pulling commits: {e}", exc_info=True)
        return False


@Bot.on_message(filters.command("update") & filters.user(OWNER_ID))
async def update_bot(client: Client, message: Message):
    """Enhanced update command with automatic restart capability"""
    global update_in_progress

    if update_in_progress:
        await message.reply_text("⚠️ Update already in progress. Please wait...")
        return

    reply = await message.reply_text("🔍 Checking for updates...")

    try:
        # Check for updates
        has_updates, update_info = await check_for_updates()

        if not has_updates:
            await reply.edit_text("✅ Bot is already up to date!")
            return

        await reply.edit_text(
            f"🆕 <b>Updates Found:</b>\n\n{update_info}\n\n"
            "🔄 Starting update process...",
            parse_mode=ParseMode.HTML,
            disable_web_page_preview=True
        )

        # Perform update
        update_success = await perform_update()

        if not update_success:
            await reply.edit_text("❌ Update failed. Check logs for details.")
            return

        await reply.edit_text(
            f"✅ <b>Update Complete!</b>\n\n{update_info}\n\n"
            "🔄 Restarting bot...",
            parse_mode=ParseMode.HTML,
            disable_web_page_preview=True
        )

        # Graceful shutdown and restart
        await graceful_shutdown()
        await restart_bot_process()

    except Exception as e:
        logger.error(f"Error in update command: {e}", exc_info=True)
        await reply.edit_text(f"❌ Update failed: {str(e)}")


@Bot.on_message(filters.command("force_update") & filters.user(OWNER_ID))
async def force_update_bot(client: Client, message: Message):
    """Force update without checking for changes"""
    global update_in_progress

    if update_in_progress:
        await message.reply_text("⚠️ Update already in progress. Please wait...")
        return

    reply = await message.reply_text("🔄 Force updating bot...")
    
    try:
        update_success = await perform_update()

        if not update_success:
            await reply.edit_text("❌ Force update failed. Check logs for details.")
            return

        await reply.edit_text("✅ Force update complete! Restarting bot...")

        # Graceful shutdown and restart
        await graceful_shutdown()
        await restart_bot_process()
        
    except Exception as e:
        logger.error(f"Error in force update command: {e}", exc_info=True)
        await reply.edit_text(f"❌ Force update failed: {str(e)}")


@Bot.on_message(filters.command("restart") & filters.user(OWNER_ID))
async def restart_bot(client: Client, message: Message):
    """Restart the bot without updating"""
    global update_in_progress

    if update_in_progress:
        await message.reply_text("⚠️ Update already in progress. Please wait...")
        return

    reply = await message.reply_text("🔄 Restarting bot...")

    try:
        await reply.edit_text("🔄 Restarting bot...")
        await graceful_shutdown()
        await restart_bot_process()

    except Exception as e:
        logger.error(f"Error in restart command: {e}", exc_info=True)
        await reply.edit_text(f"❌ Restart failed: {str(e)}")


@Bot.on_message(filters.command("status") & filters.user(OWNER_ID))
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

        await message.reply_text(status_text, parse_mode=ParseMode.HTML)

    except Exception as e:
        logger.error(f"Error in status command: {e}", exc_info=True)
        await message.reply_text(f"❌ Status check failed: {str(e)}")


# --- Connection Health Monitor ---
async def connection_monitor():
    """Periodic connection health monitoring."""
    global last_connection_check

    while True:
        try:
            current_time = time.time()
            if current_time - last_connection_check > 300:  # Check every 5 minutes
                if not await check_connection_health():
                    logger.warning("Connection health check failed, attempting to reconnect...")
                    try:
                        await Bot.stop()
                        await asyncio.sleep(5)
                        await Bot.start()
                        logger.info("Bot reconnected successfully")
                    except Exception as e:
                        logger.error(f"Failed to reconnect: {e}")

                last_connection_check = current_time

            await asyncio.sleep(60)  # Check every minute
        except Exception as e:
            logger.error(f"Error in connection monitor: {e}")
            await asyncio.sleep(60)


# --- Start the Bot ---
if __name__ == "__main__":
    try:
        logger.info("Starting Framework Patcher Bot...")

        # Initialize provider data before starting bot
        async def startup():
            logger.info("Initializing device data provider...")
            success = await provider.initialize_data()
            if not success:
                logger.warning("Failed to initialize device data, some features may not work")
            await Bot.start()
            logger.info("Bot started successfully!")
            await idle()

        import asyncio
        asyncio.run(startup())

    except KeyboardInterrupt:
        logger.info("Bot stopped by user")
    except Exception as e:
        logger.error(f"Fatal error starting bot: {e}", exc_info=True)
        sys.exit(1)

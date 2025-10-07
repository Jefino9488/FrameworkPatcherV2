import asyncio
import html
import logging
import os
import sys

import httpx
from dotenv import load_dotenv
from git import Repo
from pyrogram import Client, filters
from pyrogram.enums import ParseMode
from pyrogram.types import InlineKeyboardMarkup, InlineKeyboardButton, Message, CallbackQuery

from shell import run_shell_cmd

# Load environment variables from .env file
load_dotenv()

# Initialize repo object
REPO = Repo(os.path.dirname(os.path.dirname(__file__)))

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

# --- Conversation States (Constants) ---
STATE_NONE = 0
STATE_WAITING_FOR_API = 1
STATE_WAITING_FOR_FILES = 2
STATE_WAITING_FOR_DEVICE_NAME = 3
STATE_WAITING_FOR_VERSION_NAME = 4


# --- Helper Functions for PixelDrain and Formatting ---

# inside upload_file_stream()

async def upload_file_stream(file_path: str, pixeldrain_api_key: str) -> tuple:
    logs = []
    response_data = None
    for attempt in range(3):
        try:
            async with httpx.AsyncClient(timeout=60) as client:
                with open(file_path, "rb") as file:
                    files = {"file": (os.path.basename(file_path), file, "application/octet-stream")}
                    response = await client.post(
                        "https://pixeldrain.com/api/file",
                        files=files,
                        auth=("", pixeldrain_api_key)
                    )
                    response.raise_for_status()
            logs.append("Uploaded Successfully to PixelDrain")
            response_data = response.json()
            break
        except httpx.RequestError as e:
            error_msg = f"HTTPX Request error during PixelDrain upload: {type(e).__name__}: {e}"
            logger.error(error_msg)
            logs.append(error_msg)
            if attempt == 2:
                response_data = {"error": str(e)}
        except Exception as e:
            error_msg = f"Unexpected error during PixelDrain upload: {type(e).__name__}: {e}"
            logger.error(error_msg)
            logs.append(error_msg)
            response_data = {"error": str(e)}
            break
    if os.path.exists(file_path):
        os.remove(file_path)
    return response_data, logs


def _select_workflow_id(api_level: str) -> str:
    # Prefer specific workflow IDs if provided, fallback to default WORKFLOW_ID
    if api_level == "36":
        return WORKFLOW_ID_A16 or "android16.yml" or WORKFLOW_ID
    if api_level == "35":
        return WORKFLOW_ID_A15 or "android15.yml" or WORKFLOW_ID
    return WORKFLOW_ID


async def trigger_github_workflow_async(links: dict, device_name: str, version_name: str, api_level: str,
                                        user_id: int) -> int:
    workflow_id = _select_workflow_id(api_level)
    url = f"https://api.github.com/repos/{GITHUB_OWNER}/{GITHUB_REPO}/actions/workflows/{workflow_id}/dispatches"
    headers = {
        "Authorization": f"token {GITHUB_TOKEN}",
        "Accept": "application/vnd.github.v3+json"
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
            "user_id": str(user_id)
        }
    }
    logger.info(
        f"Attempting to dispatch GitHub workflow to {url} for device {device_name} version {version_name} for user {user_id}")
    async with httpx.AsyncClient(timeout=60) as client:
        resp = await client.post(url, json=data, headers=headers)
        resp.raise_for_status()
        return resp.status_code


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
    await message.reply_text(
        text=START_TEXT.format(message.from_user.mention),
        disable_web_page_preview=True,
        quote=True,
        reply_markup=InlineKeyboardMarkup([
            [BUTTON1, BUTTON2]
        ])
    )


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
    }
    await message.reply_text(
        "Choose Android version to patch:",
        reply_markup=InlineKeyboardMarkup(
            [
                [
                    InlineKeyboardButton("Android 15 (API 35)", callback_data="api_35"),
                    InlineKeyboardButton("Android 16 (API 36)", callback_data="api_36"),
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
    user_states[user_id]["state"] = STATE_WAITING_FOR_FILES
    await query.message.edit_text(
        "Okay, let's start the framework patching process.\n"
        "Please send all 3 JAR files (framework.jar, services.jar, miui-services.jar)."
    )
    await query.answer("Version selected.")


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
        file_path = await message.download()
        logs.append(f"Downloaded {file_name} Successfully")

        dir_name, old_file_name = os.path.split(file_path)
        file_base, file_extension = os.path.splitext(old_file_name)  # Add this line
        renamed_file_name = f"{file_base}_{user_id}_{os.urandom(4).hex()}{file_extension}"
        renamed_file_path = os.path.join(dir_name, renamed_file_name)
        os.rename(file_path, renamed_file_path)
        file_path = renamed_file_path
        logs.append(f"Renamed file to {os.path.basename(file_path)}")

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
            user_states[user_id]["state"] = STATE_WAITING_FOR_DEVICE_NAME
            await message.reply_text(
                "All 3 files received and uploaded. Please enter the device codename (e.g., rothko):",
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

    if current_state == STATE_WAITING_FOR_DEVICE_NAME:
        user_states[user_id]["device_name"] = message.text.strip()
        user_states[user_id]["state"] = STATE_WAITING_FOR_VERSION_NAME
        await message.reply_text("Now enter the ROM version (e.g., OS2.0.200.33):", quote=True)

    elif current_state == STATE_WAITING_FOR_VERSION_NAME:
        from datetime import datetime
        today = datetime.now().date()
        triggers = user_rate_limits.get(user_id, [])
        triggers = [t for t in triggers if t.date() == today]

        if len(triggers) >= 3:
            await message.reply_text("You have reached the daily limit of 3 workflow triggers. Try again tomorrow.",
                                     quote=True)
            user_states.pop(user_id, None)
            return

        user_states[user_id]["version_name"] = message.text.strip()
        await message.reply_text("All inputs received. Triggering GitHub workflow...", quote=True)

        try:
            links = user_states[user_id]["files"]
            device_name = user_states[user_id]["device_name"]
            version_name = user_states[user_id]["version_name"]
            api_level = user_states[user_id].get("api_level") or "35"

            status = await trigger_github_workflow_async(links, device_name, version_name, api_level, user_id)
            triggers.append(datetime.now())
            user_rate_limits[user_id] = triggers

            await message.reply_text(
                f"Workflow triggered successfully (status {status}). You will receive a notification when the process is complete.",
                quote=True
            )
        except httpx.HTTPStatusError as e:
            logger.error(
                f"GitHub workflow trigger failed for user {user_id}: HTTP Error {e.response.status_code} - {e.response.text}",
                exc_info=True)
            await message.reply_text(
                f"Error triggering workflow: GitHub API returned status {e.response.status_code}. "
                f"Response: `{e.response.text}`",
                quote=True
            )
        except Exception as e:
            logger.error(f"Error triggering workflow for user {user_id}: {e}", exc_info=True)
            await message.reply_text(f"An unexpected error occurred while triggering workflow: `{e}`", quote=True)
        finally:
            user_states.pop(user_id, None)

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
    """Update the bot from GitHub repository in one step (always sync)"""
    reply = await message.reply_text("Checking for updates...")

    commits = await get_commits()

    if commits is None:
        commits_text = "<i>Unable to detect commits, forcing sync...</i>"
    elif not commits:
        commits_text = "<i>No commits found, forcing sync...</i>"
    else:
        commits_text = f"<b>Updates Found:</b>\n\n{commits}"

    await reply.edit_text(
        f"{commits_text}\nPulling changes...",
        parse_mode=ParseMode.HTML,
        disable_web_page_preview=True
    )

    if not await pull_commits():
        await reply.edit_text("Failed to pull updates. Please try again later.")
        return

    await reply.edit_text(
        f"{commits_text}\n<b>Pull complete!</b>\nRestarting bot...",
        parse_mode=ParseMode.HTML,
        disable_web_page_preview=True
    )

    try:
        await run_shell_cmd("pip install -r requirements.txt")
        logging.info("Dependencies installed successfully.")
    except Exception as e:
        logging.error(f"Failed to install requirements: {e}", exc_info=True)
        await reply.edit_text("Pulled changes but failed to install requirements. Restarting anyway...")

    await reply.edit_text(
        f"{commits_text}\n<b>Pull complete!</b>\nDependencies installed.\nRestarting bot...",
        parse_mode=ParseMode.HTML,
        disable_web_page_preview=True
    )

    # Restart bot process
    os.execl(sys.executable, sys.executable, *sys.argv)

# --- Start the Bot ---
Bot.run()

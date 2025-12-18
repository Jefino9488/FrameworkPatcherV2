import asyncio

import httpx
from pyrogram import Client, filters
from pyrogram.types import Message

import config
from Framework import bot
from Framework.helpers.decorators import owner
from Framework.helpers.logger import LOGGER
from Framework.helpers.state import *
from Framework.plugins.user.patch import get_required_jars


@bot.on_message(filters.command("pdup") & filters.group & filters.reply)
@owner
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


@bot.on_message(filters.private & filters.media)
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

    # Get required JARs from user state, or default to all 3
    required_jars = user_states[user_id].get("required_jars", {"framework.jar", "services.jar", "miui-services.jar"})
    
    if file_name not in required_jars:
        if file_name in ["framework.jar", "services.jar", "miui-services.jar"]:
            await message.reply_text(
                f"'{file_name}' is not needed for your selected features.\n"
                f"Required files: {', '.join(sorted(required_jars))}",
                quote=True
            )
        else:
            await message.reply_text(
                "Invalid file name. Please send one of the required JAR files:\n"
                f"• {chr(10).join(sorted(required_jars))}",
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
                LOGGER.info(f"Download attempt {download_attempt + 1}/{max_download_attempts} for {file_name}")
                file_path = await message.download()
                download_successful = True
                logs.append(f"Downloaded {file_name} Successfully")
                break
            except Exception as e:
                LOGGER.error(f"Download attempt {download_attempt + 1} failed for {file_name}: {e}")
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
                    "enable_disable_secure_flag": False,
                    "enable_kaorios_toolbox": False
                },
                "required_jars": {"framework.jar", "services.jar", "miui-services.jar"}
            }
        
        # Use dynamic required JARs
        required_jars = user_states[user_id].get("required_jars", {"framework.jar", "services.jar", "miui-services.jar"})
        total_required = len(required_jars)
        
        received_count = len(user_states[user_id]["files"]) + 1  # +1 since current file will be counted
        missing_files = [f for f in required_jars if f not in user_states[user_id]["files"] and f != file_name]

        await message.reply_text(
            f"Received {file_name}. You have {received_count}/{total_required} files. "
            f"Remaining: {', '.join(sorted(missing_files)) if missing_files else 'None'}.",
            quote=True
        )

        await processing_message.edit_text(
            text=f"`Uploading {file_name} to PixelDrain...`",
            disable_web_page_preview=True
        )

        response_data, upload_logs = await upload_file_stream(file_path, config.PIXELDRAIN_API_KEY)
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
        missing_files = [f for f in required_jars if f not in user_states[user_id]["files"]]

        if received_count == total_required:
            # All files received, now trigger the workflow
            from Framework.helpers.workflows import trigger_github_workflow_async
            from datetime import datetime
            from Framework.helpers.state import user_rate_limits

            await message.reply_text(
                f"✅ All {total_required} required file(s) received and uploaded!\n\n"
                "⏳ Triggering GitHub workflow...",
                quote=True
            )

            try:
                # Check daily rate limit
                today = datetime.now().date()
                triggers = user_rate_limits.get(user_id, [])
                triggers = [t for t in triggers if t.date() == today]

                if len(triggers) >= 3:
                    await message.reply_text(
                        "❌ You have reached the daily limit of 3 workflow triggers. Try again tomorrow.",
                        quote=True
                    )
                    user_states.pop(user_id, None)
                    return

                # Get all required info from state
                device_name = user_states[user_id]["device_name"]
                device_codename = user_states[user_id]["device_codename"]
                version_name = user_states[user_id]["version_name"]
                api_level = user_states[user_id]["api_level"]
                android_version = user_states[user_id]["android_version"]
                features = user_states[user_id].get("features", {
                    "enable_signature_bypass": True,
                    "enable_cn_notification_fix": False,
                    "enable_disable_secure_flag": False
                })

                links = user_states[user_id]["files"]
                # Trigger workflow
                status = await trigger_github_workflow_async(links, device_name, device_codename, version_name,
                                                             api_level, user_id,
                                                             features)
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
                if features.get("enable_kaorios_toolbox"):
                    selected_features.append("✓ Kaorios Toolbox (Play Integrity Fix)")

                features_summary = "\n".join(selected_features) if selected_features else "Default features"

                await message.reply_text(
                    f"✅ **Workflow triggered successfully!**\n\n"
                    f"📱 **Device:** {device_name}\n"
                    f"📦 **Version:** {version_name}\n"
                    f"🤖 **Android:** {android_version} (API {api_level})\n\n"
                    f"**Features Applied:**\n{features_summary}\n\n"
                    f"⏳ You will receive a notification when the process is complete.\n\n"
                    f"Daily triggers used: {len(triggers)}/3",
                    quote=True
                )

            except Exception as e:
                LOGGER.error(f"Error triggering workflow for user {user_id}: {e}", exc_info=True)
                await message.reply_text(
                    f"❌ **An unexpected error occurred while triggering workflow:**\n\n`{e}`",
                    quote=True
                )

            finally:
                user_states.pop(user_id, None)
        else:
            await message.reply_text(
                f"Received {file_name}. You have {received_count}/{total_required} files. "
                f"Please send the remaining: {', '.join(sorted(missing_files))}.",
                quote=True
            )

    except Exception as error:
        LOGGER.error(f"Error in handle_media_upload for user {user_id} and file {file_name}: {error}", exc_info=True)
        await processing_message.edit_text(
            text=f"An error occurred during processing {file_name}: `{error}`\n\nLogs:\n" + '\n'.join(logs),
            disable_web_page_preview=True
        )
        user_states.pop(user_id, None)
    finally:
        if file_path and os.path.exists(file_path):
            os.remove(file_path)

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
            LOGGER.info(f"Upload attempt {attempt + 1}/{max_attempts} with timeout {timeout}s")

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
            LOGGER.info(f"Upload successful on attempt {attempt + 1}")
            break

        except httpx.TimeoutException as e:
            error_msg = f"Upload timeout on attempt {attempt + 1}: {e}"
            LOGGER.error(error_msg)
            logs.append(error_msg)
            if attempt == max_attempts - 1:
                response_data = {"error": f"Upload failed after {max_attempts} attempts due to timeout"}
            
        except httpx.RequestError as e:
            error_msg = f"HTTPX Request error during PixelDrain upload (attempt {attempt + 1}): {type(e).__name__}: {e}"
            LOGGER.error(error_msg)
            logs.append(error_msg)
            if attempt == max_attempts - 1:
                response_data = {"error": f"Upload failed after {max_attempts} attempts: {str(e)}"}

        except httpx.HTTPStatusError as e:
            error_msg = f"HTTP error {e.response.status_code} on attempt {attempt + 1}: {e.response.text}"
            LOGGER.error(error_msg)
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
            LOGGER.error(error_msg, exc_info=True)
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
            LOGGER.error(f"Failed to remove temporary file {file_path}: {e}")
    
    return response_data, logs
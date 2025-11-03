from datetime import datetime
from pyrogram import filters, Client
from pyrogram.types import Message, InlineKeyboardButton, InlineKeyboardMarkup, CallbackQuery

from Framework import bot
from Framework.helpers.pd_utils import *
from Framework.helpers.state import *
from Framework.helpers.workflows import *
from Framework.helpers.logger import LOGGER
from Framework.helpers.provider import *

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

@bot.on_message(
    filters.private
    & filters.text
    & ~filters.command(["start", "start_patch", "cancel", "update", "sh", "ping", "status"]),
    group=1
)
async def handle_text_input(bot: Client, message: Message):
    user_id = message.from_user.id

    if message.from_user.is_bot:
        return

    current_state = user_states.get(user_id, {}).get("state", STATE_NONE)

    if current_state == STATE_WAITING_FOR_DEVICE_CODENAME:
        codename = message.text.strip().lower()

        # Validate codename
        if not is_codename_valid(codename):
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
            similar = get_similar_codenames(codename)
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
        device_info = get_device_by_codename(codename)
        software_data = get_device_software(codename)

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
            LOGGER.error(f"Error processing PixelDrain info request: {e}", exc_info=True)
            await message.reply_text(f"An error occurred while fetching PixelDrain info: `{e}`", quote=True)
    else:
        await message.reply_text("I'm currently expecting files or specific text input. Use /cancel to restart.",
                                 quote=True)
        
        
@bot.on_callback_query(filters.regex(r"^ver_(\d+|showall)$"))
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
        api_level = android_version_to_api_level(android_version)

        # Store version info
        user_states[user_id]["version_name"] = version_name
        user_states[user_id]["android_version"] = android_version
        user_states[user_id]["api_level"] = api_level

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

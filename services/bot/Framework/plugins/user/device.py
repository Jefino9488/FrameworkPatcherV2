from pyrogram import filters, Client
from pyrogram.types import CallbackQuery

from Framework import bot
from Framework.helpers.pd_utils import *
from Framework.helpers.provider import *
from Framework.helpers.workflows import *


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

        buttons.append([InlineKeyboardButton("❓ Can't find your version?", callback_data="ver_manual")])
        buttons.append([InlineKeyboardButton("🔄 Reselect Codename", callback_data="reselect_codename")])
        await message.reply_text(
            f"✅ Device found: **{device_info['name']}** (`{codename}`)\n\n"
            f"📦 Found {len(miui_roms)} MIUI ROM version(s)\n\n"
            f"Please select a version:",
            reply_markup=InlineKeyboardMarkup(buttons),
            quote=True
        )

    elif current_state == STATE_WAITING_FOR_MANUAL_ROM_VERSION:
        # User is entering ROM version manually
        rom_version = message.text.strip()

        if not rom_version:
            await message.reply_text(
                "❌ ROM version cannot be empty. Please enter a valid version (e.g., OS2.0.208.0.VNOCNXM).",
                quote=True
            )
            return

        # Store the ROM version
        user_states[user_id]["version_name"] = rom_version
        user_states[user_id]["state"] = STATE_WAITING_FOR_MANUAL_ANDROID_VERSION

        await message.reply_text(
            f"✅ ROM version set to: `{rom_version}`\n\n"
            f"Now, please enter the Android version (e.g., 15, 14, 13):",
            quote=True
        )

    elif current_state == STATE_WAITING_FOR_MANUAL_ANDROID_VERSION:
        # User is entering Android version manually
        android_input = message.text.strip()

        if not android_input:
            await message.reply_text(
                "❌ Android version cannot be empty. Please enter a valid version (e.g., 15, 14, 13).",
                quote=True
            )
            return

        # Try to parse and validate Android version
        try:
            android_float = float(android_input)
            android_int = int(android_float)

            if android_int < 13:
                await message.reply_text(
                    f"⚠️ Android {android_int} is not supported. Minimum required: Android 13\n\n"
                    f"Please enter a supported Android version (13 or higher):",
                    quote=True
                )
                return

            if android_int > 20:
                await message.reply_text(
                    f"❌ Android {android_int} seems invalid. Please enter a reasonable version (13-20):",
                    quote=True
                )
                return

            # Store Android version as string to match existing format
            android_version = str(android_float)
            api_level = android_version_to_api_level(android_version)

            user_states[user_id]["android_version"] = android_version
            user_states[user_id]["api_level"] = api_level
            user_states[user_id]["state"] = STATE_WAITING_FOR_FEATURES

            # Build feature selection buttons based on Android version
            buttons = [
                [InlineKeyboardButton("☐ Disable Signature Verification", callback_data="feature_signature")]
            ]

            # Only show Android 15+ features if version is 15 or higher
            if android_int >= 15:
                buttons.append([InlineKeyboardButton("☐ CN Notification Fix", callback_data="feature_cn_notif")])
                buttons.append([InlineKeyboardButton("☐ Disable Secure Flag", callback_data="feature_secure_flag")])
                buttons.append([InlineKeyboardButton("☐ Kaorios Toolbox (Play Integrity)", callback_data="feature_kaorios")])

            buttons.append([InlineKeyboardButton("Continue with selected features", callback_data="features_done")])

            await message.reply_text(
                f"✅ **Manual version configured!**\n\n"
                f"📱 **Device:** {user_states[user_id]['device_name']} (`{user_states[user_id]['device_codename']}`)\n"
                f"📦 **ROM Version:** {user_states[user_id]['version_name']}\n"
                f"🤖 **Android:** {android_version} (API {api_level})\n\n"
                f"Now, choose which features to apply:",
                reply_markup=InlineKeyboardMarkup(buttons),
                quote=True
            )

        except ValueError:
            await message.reply_text(
                f"❌ Invalid Android version: `{android_input}`\n\n"
                f"Please enter a valid number (e.g., 15, 14.0, 13):",
                quote=True
            )

    elif current_state == STATE_WAITING_FOR_VERSION_SELECTION:
        # Handle text input for version selection (when user types a number)
        user_input = message.text.strip()
        software_data = user_states[user_id].get("software_data")

        if not software_data:
            await message.reply_text("❌ Session expired. Please use /start_patch to begin again.", quote=True)
            user_states.pop(user_id, None)
            return

        miui_roms = software_data.get("miui_roms", [])

        # Try to parse as version number
        try:
            version_idx = int(user_input) - 1  # User enters 1-based, we need 0-based

            if version_idx < 0 or version_idx >= len(miui_roms):
                await message.reply_text(
                    f"❌ Invalid version number. Please enter a number between 1 and {len(miui_roms)}.",
                    quote=True
                )
                return

            selected_rom = miui_roms[version_idx]
            version_name = selected_rom.get('version') or selected_rom.get('miui', 'Unknown')
            android_version = selected_rom.get('android')

            # Validate Android version
            if not android_version:
                await message.reply_text("⚠️ Android version not found for this ROM!", quote=True)
                return

            android_int = int(float(android_version))
            if android_int < 13:
                await message.reply_text(
                    f"⚠️ Android {android_version} is not supported. Minimum required: Android 13\n\n"
                    f"Please select another version.",
                    quote=True
                )
                return

            # Get API level
            api_level = android_version_to_api_level(android_version)

            # Store version info
            user_states[user_id]["version_name"] = version_name
            user_states[user_id]["android_version"] = android_version
            user_states[user_id]["api_level"] = api_level
            user_states[user_id]["state"] = STATE_WAITING_FOR_FEATURES

            # Build feature selection buttons based on Android version
            buttons = [
                [InlineKeyboardButton("☐ Disable Signature Verification", callback_data="feature_signature")]
            ]

            # Only show Android 15+ features if version is 15 or higher
            if android_int >= 15:
                buttons.append([InlineKeyboardButton("☐ CN Notification Fix", callback_data="feature_cn_notif")])
                buttons.append([InlineKeyboardButton("☐ Disable Secure Flag", callback_data="feature_secure_flag")])
                buttons.append([InlineKeyboardButton("☐ Kaorios Toolbox", callback_data="feature_kaorios")])

            buttons.append([InlineKeyboardButton("Continue with selected features", callback_data="features_done")])

            await message.reply_text(
                f"✅ **Version selected!**\n\n"
                f"📱 **Device:** {user_states[user_id]['device_name']}\n"
                f"📦 **Version:** {version_name}\n"
                f"🤖 **Android:** {android_version} (API {api_level})\n\n"
                f"Now, choose which features to apply:",
                reply_markup=InlineKeyboardMarkup(buttons),
                quote=True
            )

        except ValueError:
            # Not a number, try to match by version name
            user_input_lower = user_input.lower()
            matched_idx = None

            for idx, rom in enumerate(miui_roms):
                version = rom.get('version') or rom.get('miui', '')
                if user_input_lower in version.lower():
                    matched_idx = idx
                    break

            if matched_idx is not None:
                # Found a match, process it
                selected_rom = miui_roms[matched_idx]
                version_name = selected_rom.get('version') or selected_rom.get('miui', 'Unknown')
                android_version = selected_rom.get('android')

                if not android_version:
                    await message.reply_text("⚠️ Android version not found for this ROM!", quote=True)
                    return

                android_int = int(float(android_version))
                if android_int < 13:
                    await message.reply_text(
                        f"⚠️ Android {android_version} is not supported. Minimum required: Android 13",
                        quote=True
                    )
                    return

                api_level = android_version_to_api_level(android_version)
                user_states[user_id]["version_name"] = version_name
                user_states[user_id]["android_version"] = android_version
                user_states[user_id]["api_level"] = api_level
                user_states[user_id]["state"] = STATE_WAITING_FOR_FEATURES

                buttons = [
                    [InlineKeyboardButton("☐ Disable Signature Verification", callback_data="feature_signature")]
                ]

                if android_int >= 15:
                    buttons.append([InlineKeyboardButton("☐ CN Notification Fix", callback_data="feature_cn_notif")])
                    buttons.append([InlineKeyboardButton("☐ Disable Secure Flag", callback_data="feature_secure_flag")])
                    buttons.append([InlineKeyboardButton("☐ Kaorios Toolbox ", callback_data="feature_kaorios")])

                buttons.append([InlineKeyboardButton("Continue with selected features", callback_data="features_done")])

                await message.reply_text(
                    f"✅ **Version selected!**\n\n"
                    f"📱 **Device:** {user_states[user_id]['device_name']}\n"
                    f"📦 **Version:** {version_name}\n"
                    f"🤖 **Android:** {android_version} (API {api_level})\n\n"
                    f"Now, choose which features to apply:",
                    reply_markup=InlineKeyboardMarkup(buttons),
                    quote=True
                )
            else:
                await message.reply_text(
                    f"❌ Version not found: `{user_input}`\n\n"
                    f"Please enter a version number (1-{len(miui_roms)}) or click a button from the list above.",
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


@bot.on_callback_query(filters.regex(r"^ver_(manual)$"))
async def manual_version_handler(bot: Client, query: CallbackQuery):
    """Handles manual version entry request."""
    user_id = query.from_user.id

    LOGGER.info(f"Manual version entry callback received: user_id={user_id}")

    if user_id not in user_states:
        LOGGER.warning(f"User {user_id} not in user_states")
        await query.answer("Session expired. Please use /start_patch to begin again.", show_alert=True)
        return

    current_state = user_states[user_id].get("state")

    if current_state != STATE_WAITING_FOR_VERSION_SELECTION:
        LOGGER.warning(
            f"User {user_id} not in correct state. Expected: {STATE_WAITING_FOR_VERSION_SELECTION}, Got: {current_state}")
        await query.answer("Not expecting version selection. Please restart with /start_patch", show_alert=True)
        return

    # Set state to wait for manual ROM version
    user_states[user_id]["state"] = STATE_WAITING_FOR_MANUAL_ROM_VERSION

    device_name = user_states[user_id].get("device_name", "Unknown")
    codename = user_states[user_id].get("device_codename", "unknown")

    await query.message.edit_text(
        f"📝 **Manual Version Entry**\n\n"
        f"Device: **{device_name}** (`{codename}`)\n\n"
        f"Please enter your ROM version.\n"
        f"Example: `OS2.0.208.0.VNOCNXM` or `V14.0.5.0.TKQMIXM`\n\n"
        f"Type /cancel to go back."
    )
    await query.answer("Switched to manual entry mode")
    LOGGER.info(f"User {user_id} switched to manual version entry")


@bot.on_callback_query(filters.regex(r"^ver_(\d+|showall)$"))
async def version_selection_handler(bot: Client, query: CallbackQuery):
    """Handles version selection from inline keyboard."""
    user_id = query.from_user.id

    LOGGER.info(f"Version selection callback received: user_id={user_id}, data={query.data}")

    if user_id not in user_states:
        LOGGER.warning(f"User {user_id} not in user_states")
        await query.answer("Session expired. Please use /start_patch to begin again.", show_alert=True)
        return

    current_state = user_states[user_id].get("state")
    LOGGER.info(f"User {user_id} current state: {current_state}")

    if current_state != STATE_WAITING_FOR_VERSION_SELECTION:
        LOGGER.warning(
            f"User {user_id} not in correct state. Expected: {STATE_WAITING_FOR_VERSION_SELECTION}, Got: {current_state}")
        await query.answer("Not expecting version selection. Please restart with /start_patch", show_alert=True)
        return

    data = query.data.split("_", 1)[1]
    LOGGER.info(f"Parsed version data: {data}")

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
        LOGGER.info(f"Processing version selection: index={version_idx}")

        software_data = user_states[user_id].get("software_data")
        if not software_data:
            LOGGER.error(f"No software_data found for user {user_id}")
            await query.answer("Session data lost. Please use /start_patch to begin again.", show_alert=True)
            return

        miui_roms = software_data.get("miui_roms", [])
        LOGGER.info(f"Available ROMs count: {len(miui_roms)}")

        if version_idx < 0 or version_idx >= len(miui_roms):
            LOGGER.warning(f"Invalid version index: {version_idx} (available: 0-{len(miui_roms) - 1})")
            await query.answer(f"Invalid version selection! Index: {version_idx}, Available: {len(miui_roms)}",
                               show_alert=True)
            return

        selected_rom = miui_roms[version_idx]
        LOGGER.info(f"Selected ROM: {selected_rom}")
        version_name = selected_rom.get('version') or selected_rom.get('miui', 'Unknown')
        android_version = selected_rom.get('android')
        LOGGER.info(f"Version: {version_name}, Android: {android_version}")

        # Validate Android version
        if not android_version:
            await query.answer("⚠️ Android version not found for this ROM!", show_alert=True)
            return

        android_int = int(float(android_version))
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
        user_states[user_id]["state"] = STATE_WAITING_FOR_FEATURES

        # Build feature selection buttons based on Android version
        android_int = int(float(android_version))
        buttons = [
            [InlineKeyboardButton("☐ Disable Signature Verification", callback_data="feature_signature")]
        ]

        # Only show Android 15+ features if version is 15 or higher
        if android_int >= 15:
            buttons.append([InlineKeyboardButton("☐ CN Notification Fix", callback_data="feature_cn_notif")])
            buttons.append([InlineKeyboardButton("☐ Disable Secure Flag", callback_data="feature_secure_flag")])
            buttons.append([InlineKeyboardButton("☐ Kaorios Toolbox", callback_data="feature_kaorios")])

        buttons.append([InlineKeyboardButton("Continue with selected features", callback_data="features_done")])

        await query.message.edit_text(
            f"✅ **Version selected!**\n\n"
            f"📱 **Device:** {user_states[user_id]['device_name']}\n"
            f"📦 **Version:** {version_name}\n"
            f"🤖 **Android:** {android_version} (API {api_level})\n\n"
            f"Now, choose which features to apply:",
            reply_markup=InlineKeyboardMarkup(buttons)
        )
        await query.answer("Version selected!")
        LOGGER.info(f"Version selection completed successfully for user {user_id}")

    except ValueError as e:
        LOGGER.error(f"ValueError in version selection: {e}", exc_info=True)
        await query.answer("Invalid version selection!", show_alert=True)

    except Exception as e:
        LOGGER.error(f"Unexpected error in version selection for user {user_id}: {e}", exc_info=True)
        await query.answer(f"An error occurred: {str(e)}", show_alert=True)

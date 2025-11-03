from pyrogram import filters, Client
from pyrogram.types import Message, InlineKeyboardMarkup, InlineKeyboardButton, CallbackQuery

from Framework.helpers.state import *
from Framework import bot


@bot.on_message(filters.private & filters.command("start_patch"))
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


@bot.on_callback_query(filters.regex(r"^api_(35|36)$"))
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
                [InlineKeyboardButton("☐ Disable Signature Verification", callback_data="feature_signature")],
                [InlineKeyboardButton("☐ CN Notification Fix", callback_data="feature_cn_notif")],
                [InlineKeyboardButton("☐ Disable Secure Flag", callback_data="feature_secure_flag")],
                [InlineKeyboardButton("➡️ Continue with selected features", callback_data="features_done")]
            ]
        )
    )
    await query.answer("Version selected.")


@bot.on_callback_query(filters.regex(r"^feature_(signature|cn_notif|secure_flag)$"))
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


@bot.on_callback_query(filters.regex(r"^features_done$"))
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

from pyrogram.types import Message, InlineKeyboardMarkup

from Framework.helpers.buttons import *
from Framework.helpers.functions import format_size, format_date
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


async def send_data(file_id: str, message: Message):
    text = "`Fetching file information...`"
    reply_markup = None
    try:
        async with httpx.AsyncClient(timeout=30) as client:
            response = await client.get(f"https://pixeldrain.com/api/file/{file_id}/info")
            response.raise_for_status()
            data = response.json()
    except httpx.RequestError as e:
        LOGGER.error(f"Error fetching PixelDrain info for {file_id}: {type(e).__name__}: {e}")
        text = f"Failed to retrieve file information: Network error or invalid ID."
        data = None
    except Exception as e:
        LOGGER.error(
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


async def upload_file(file_path: str, message: Message):
    """Uploads a file to PixelDrain."""
    import os
    import config

    api_key = config.PIXELDRAIN_API_KEY
    if not api_key:
        await message.edit_text("❌ PixelDrain API key is missing in configuration.")
        return

    file_name = os.path.basename(file_path)
    file_size = os.path.getsize(file_path)

    await message.edit_text(f"🚀 Uploading `{file_name}` ({format_size(file_size)})...")

    try:
        async with httpx.AsyncClient(timeout=None) as client:
            with open(file_path, "rb") as f:
                # We need to read the file to upload it. 
                # httpx supports passing a file-like object or a generator.
                # For simplicity with aiofiles, we can read it into memory if it's not too huge, 
                # or use a generator for streaming. 
                # Given this is likely for smaller files (logs, etc), reading might be okay, 
                # but streaming is safer.

                # Using a simple read for now as aiofiles + httpx streaming can be tricky without a wrapper
                content = f.read()
                
            response = await client.put(
                f"https://pixeldrain.com/api/file/{file_name}",
                content=content,
                auth=("", api_key)
            )

            response.raise_for_status()
            data = response.json()

            if data.get("success") or data.get("id"):
                file_id = data["id"]
                text = (
                    f"✅ **Upload Successful!**\n\n"
                    f"📂 **File:** `{file_name}`\n"
                    f"🔗 **Link:** https://pixeldrain.com/u/{file_id}\n"
                    f"⚡ **Direct:** https://pixeldrain.com/api/file/{file_id}"
                )
                await message.edit_text(text, disable_web_page_preview=True)
            else:
                await message.edit_text(f"❌ Upload failed: {data.get('message', 'Unknown error')}")

    except Exception as e:
        LOGGER.error(f"Error uploading to PixelDrain: {e}", exc_info=True)
        await message.edit_text(f"❌ An error occurred during upload: `{e}`")

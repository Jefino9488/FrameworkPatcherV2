from pyrogram.types import Message, InlineKeyboardButton, InlineKeyboardMarkup

from Framework.helpers.logger import LOGGER
from Framework.helpers.functions import format_size, format_date
from Framework.helpers.buttons import *
from Framework.helpers.state import *
from Framework.helpers.provider import *
import httpx


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

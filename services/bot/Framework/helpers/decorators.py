from functools import wraps
from typing import Union
from pyrogram.types import Message, CallbackQuery
from Framework.helpers.owner_id import OWNER_ID

def owner(func):
    @wraps(func)
    async def wrapper(client, update: Union[Message, CallbackQuery], *args, **kwargs):
        user = update.from_user
        
        if not user or user.id not in OWNER_ID:
            return

        return await func(client, update, *args, **kwargs)
    return wrapper

import logging
import os
from logging.handlers import RotatingFileHandler


if os.path.exists("logs.txt"):
    os.remove("logs.txt")

logging.basicConfig(
    level=logging.INFO,
    format="[%(asctime)s - %(levelname)s] - %(name)s - %(message)s",
    datefmt="%d-%b-%y %H:%M:%S",
    handlers=[
        RotatingFileHandler("logs.txt", mode="w+", maxBytes=5000000, backupCount=3),
        logging.StreamHandler(),
    ]
)


logging.getLogger("aiohttp").setLevel(logging.ERROR)
logging.getLogger("pyrogram").setLevel(logging.ERROR)
logging.getLogger("pymongo").setLevel(logging.WARNING)
logging.getLogger("httpx").setLevel(logging.ERROR)


def get_logger(name: str) -> logging.Logger:
    return logging.getLogger(name)


# Module-level default logger for simple usage
LOGGER = get_logger(__name__)

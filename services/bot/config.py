import os
from pathlib import Path

from dotenv import load_dotenv

ROOT_DIR = Path(__file__).resolve().parents[2]
load_dotenv(ROOT_DIR / ".env")

BOT_TOKEN = os.environ["BOT_TOKEN"]
API_ID = os.environ["API_ID"]
API_HASH = os.environ["API_HASH"]
PIXELDRAIN_API_KEY = os.getenv("PIXELDRAIN_API_KEY")
GITHUB_TOKEN = os.getenv("GITHUB_TOKEN")
GITHUB_OWNER = os.getenv("GITHUB_OWNER")
GITHUB_REPO = os.getenv("GITHUB_REPO")
WORKFLOW_ID = os.getenv("WORKFLOW_ID")
WORKFLOW_ID_A13 = os.getenv("GITHUB_WORKFLOW_ID_A13")
WORKFLOW_ID_A14 = os.getenv("GITHUB_WORKFLOW_ID_A14")
WORKFLOW_ID_A15 = os.getenv("GITHUB_WORKFLOW_ID_A15")
WORKFLOW_ID_A16 = os.getenv("GITHUB_WORKFLOW_ID_A16")
OWNER_ID = os.getenv("OWNER_ID", "")

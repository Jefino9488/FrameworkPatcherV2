import psutil
from Framework.helpers.logger import LOGGER

async def get_bot_processes():
    """Get all bot processes running."""
    try:
        processes = []
        for proc in psutil.process_iter(['pid', 'name', 'cmdline']):
            try:
                if 'python' in proc.info['name'].lower():
                    cmdline = ' '.join(proc.info['cmdline']) if proc.info['cmdline'] else ''
                    if ' -m Framework' in cmdline or 'python -m Framework' in cmdline or 'FrameworkPatcherBot' in cmdline:
                        processes.append(proc)
            except (psutil.NoSuchProcess, psutil.AccessDenied):
                continue
        return processes
    except Exception as e:
        LOGGER.error(f"Error getting bot processes: {e}")
        return []

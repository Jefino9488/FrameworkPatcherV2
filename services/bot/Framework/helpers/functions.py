def get_readable_time(seconds: int) -> str:
    """ Return a human-readable time format from seconds. """

    result = ""
    (days, remainder) = divmod(seconds, 86400)
    days = int(days)

    if days != 0:
        result += f"{days}d "
    (hours, remainder) = divmod(remainder, 3600)
    hours = int(hours)

    if hours != 0:
        result += f"{hours}h "
    (minutes, seconds) = divmod(remainder, 60)
    minutes = int(minutes)

    if minutes != 0:
        result += f"{minutes}m "

    seconds = int(seconds)
    result += f"{seconds}s "
    return result

def format_size(size: int) -> str:
    """Formats file size into human-readable string."""
    if size < 1024:
        return f"{size} B"
    elif size < 1024 * 1024:
        return f"{size / 1024:.2f} KB"
    elif size < 1024 * 1024 * 1024:
        return f"{size / (1024 * 1024)::.2f} MB"
    else:
        return f"{size / (1024 * 1024 * 1024)::.2f} GB"


def format_date(date_str: str) -> str:
    """Formats ISO date string."""
    try:
        date, time = date_str.split("T")
        time = time.split(".")[0]
        return f"{date} {time}"
    except (AttributeError, IndexError):
        return date_str
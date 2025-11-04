import ast
import os
import config

def _parse_owner_ids() -> list[int]:    
    raw = os.getenv("OWNER_ID", str(config.OWNER_ID)).strip()

    if not raw:
        raise RuntimeError("OWNER_ID is missing in config or environment")

    if raw.startswith("[") and raw.endswith("]"):
        try:
            parsed = ast.literal_eval(raw)
            if isinstance(parsed, list):
                return [int(x) for x in parsed]
            raise ValueError
        except Exception:
            raise RuntimeError(f"Invalid OWNER_ID list format: {raw}")

    
    if "," in raw:
        ids = [x.strip() for x in raw.split(",") if x.strip()]
        return [int(x) for x in ids if x.isdigit()]
    
    if raw.isdigit():
        return [int(raw)]

    raise RuntimeError(f"Invalid OWNER_ID format: {raw}")

OWNER_ID = _parse_owner_ids()

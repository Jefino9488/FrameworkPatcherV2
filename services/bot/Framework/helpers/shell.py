import asyncio

async def run_shell_cmd(cmd: str) -> str:
    process = await asyncio.create_subprocess_shell(
        cmd,
        stdout=asyncio.subprocess.PIPE,
        stderr=asyncio.subprocess.STDOUT
    )
    stdout, _ = await process.communicate()
    return stdout.decode()

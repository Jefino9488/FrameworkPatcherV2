import argparse
import os
import subprocess


def patch_jar(jar_name, patch_script):
    """Decompiles, patches, and recompiles a JAR file."""
    if not os.path.exists(f"{jar_name}.jar"):
        print(f"Skipping {jar_name} patch: {jar_name}.jar not found.")
        return

    print(f"Patching {jar_name}...")
    subprocess.run(["bash", "decompile.sh", f"{jar_name}.jar"])
    subprocess.run(["python3", patch_script])
    subprocess.run(["bash", "recompile.sh", f"{jar_name}_decompile"])
    os.rename(f"{jar_name}_decompile.zip", f"{jar_name}_patched.jar")
    print(f"Finished patching {jar_name}.")


def main():
    parser = argparse.ArgumentParser(description="Patch Android JAR files.")
    parser.add_argument("--framework", action="store_true", help="Patch framework.jar")
    parser.add_argument("--services", action="store_true", help="Patch services.jar")
    parser.add_argument("--miui-services", action="store_true", help="Patch miui-services.jar")
    args = parser.parse_args()

    if args.framework:
        patch_jar("framework", "framework_patch.py")
    if args.services:
        patch_jar("services", "services_patch.py")
    if args.miui_services:
        patch_jar("miui_services", "miui_services_patch.py")


if __name__ == "__main__":
    main()

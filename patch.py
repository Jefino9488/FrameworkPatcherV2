import argparse
import logging
import os
import shutil
import subprocess

logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')


def patch_jar(jar_name, patch_script, api_level):
    """Decompiles, patches, and recompiles a JAR file."""
    jar_file = f"{jar_name}.jar"
    if not os.path.exists(jar_file):
        logging.error(f"Skipping {jar_name} patch: {jar_file} not found.")
        return False

    logging.info(f"Patching {jar_name}...")
    decompile_dir = f"{jar_name}_decompile"

    if os.path.exists(decompile_dir):
        shutil.rmtree(decompile_dir)
    os.makedirs(decompile_dir, exist_ok=True)

    # Extract the jar, automatically overwriting existing files
    subprocess.run(["7z", "x", "-y", jar_file, f"-o{jar_name}"], check=True)

    if os.path.exists(os.path.join(jar_name, "classes.dex")):
        subprocess.run([
            "java", "-jar", "tools/baksmali.jar",
            "d",
            "-a", str(api_level),
            os.path.join(jar_name, "classes.dex"),
            "-o", os.path.join(decompile_dir, "classes")
        ], check=True)

    for i in range(2, 6):
        dex_file = os.path.join(jar_name, f"classes{i}.dex")
        if os.path.exists(dex_file):
            subprocess.run([
                "java", "-jar", "tools/baksmali.jar",
                "d",
                "-a", str(api_level),
                dex_file,
                "-o", os.path.join(decompile_dir, f"classes{i}")
            ], check=True)

    try:
        subprocess.run(["python", patch_script, decompile_dir], check=True)
        logging.info(f"Successfully applied patches using {patch_script}")
    except subprocess.CalledProcessError as e:
        logging.error(f"Failed to apply patches: {e}")
        return False

    if os.path.exists(os.path.join(decompile_dir, "classes")):
        subprocess.run([
            "java", "-jar", "tools/smali.jar",
            "a",
            "-a", str(api_level),
            os.path.join(decompile_dir, "classes"),
            "-o", os.path.join(jar_name, "classes.dex")
        ], check=True)

    for i in range(2, 6):
        class_dir = os.path.join(decompile_dir, f"classes{i}")
        if os.path.exists(class_dir):
            subprocess.run([
                "java", "-jar", "tools/smali.jar",
                "a",
                "-a", str(api_level),
                class_dir,
                "-o", os.path.join(jar_name, f"classes{i}.dex")
            ], check=True)

    patched_jar = f"{jar_name}_patched.jar"
    shutil.copy2(jar_file, patched_jar)

    # Update jar with patched dex files, assuming yes to any prompts
    subprocess.run([
        "7z", "u", "-y", patched_jar, os.path.join(jar_name, "classes*.dex")
    ], check=True)

    logging.info(f"Created patched JAR: {patched_jar}")
    return True


def main():
    parser = argparse.ArgumentParser(description="Patch Android JAR files.")
    parser.add_argument("--api_level", required=True, help="Android API level for baksmali.")
    parser.add_argument("--framework", action="store_true", help="Patch framework.jar")
    parser.add_argument("--services", action="store_true", help="Patch services.jar")
    parser.add_argument("--miui-services", action="store_true", help="Patch miui-services.jar")
    args = parser.parse_args()

    if args.framework:
        patch_jar("framework", "framework_patch.py", args.api_level)
    if args.services:
        patch_jar("services", "services_patch.py", args.api_level)
    if args.miui_services:
        patch_jar("miui-services", "miui_services_patch.py", args.api_level)


if __name__ == "__main__":
    main()

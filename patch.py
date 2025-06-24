import argparse
import logging
import os
import shutil
import subprocess

logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')


def decompile_dex(jar_name, api_level):
    """Decompiles dex files from a specific jar directory."""
    jar_dir = jar_name
    if not os.path.exists(jar_dir):
        logging.error(f"Directory {jar_dir} not found.")
        return False

    decompile_dir = f"{jar_name}_decompile"
    os.makedirs(decompile_dir, exist_ok=True)

    # Check for classes.dex files
    dex_files = []
    for i in range(1, 6):
        dex_file = f"classes{i if i > 1 else ''}.dex"
        if os.path.exists(os.path.join(jar_dir, dex_file)):
            dex_files.append(dex_file)

    if not dex_files:
        logging.error(f"No dex files found in {jar_dir}.")
        return False

    # Decompile each dex file
    for dex_file in dex_files:
        out_dir = os.path.join(decompile_dir, os.path.splitext(dex_file)[0])
        try:
            subprocess.run([
                "java", "-jar", "tools/baksmali.jar",
                "d",
                "-a", str(api_level),
                "--no-debug-info",
                "--no-parameter-registers",
                os.path.join(jar_dir, dex_file),
                "-o", out_dir
            ], check=True)
            logging.info(f"Successfully decompiled {dex_file}")
        except subprocess.CalledProcessError as e:
            logging.error(f"Failed to decompile {dex_file}: {e}")
            return False
    return True


def recompile_dex(jar_name, api_level):
    """Recompiles smali files back to dex."""
    decompile_dir = f"{jar_name}_decompile"
    if not os.path.exists(decompile_dir):
        logging.error(f"Decompiled directory {decompile_dir} not found.")
        return False

    # Find all class directories
    class_dirs = []
    for i in range(1, 6):
        class_dir = f"classes{i if i > 1 else ''}"
        if os.path.exists(os.path.join(decompile_dir, class_dir)):
            class_dirs.append(class_dir)

    if not class_dirs:
        logging.error(f"No class directories found in {decompile_dir}")
        return False

    # Recompile each directory to dex
    for class_dir in class_dirs:
        try:
            subprocess.run([
                "java", "-jar", "tools/smali.jar",
                "a",
                "-a", str(api_level),
                os.path.join(decompile_dir, class_dir),
                "-o", os.path.join(decompile_dir, f"{class_dir}.dex")
            ], check=True)
            logging.info(f"Successfully recompiled {class_dir}")
        except subprocess.CalledProcessError as e:
            logging.error(f"Failed to recompile {class_dir}: {e}")
            return False

    # Create patched jar
    patched_jar = f"{jar_name}_patched.jar"
    if os.path.exists(f"{jar_name}.jar"):
        shutil.copy(f"{jar_name}.jar", patched_jar)
        # Update the jar with patched dex files
        try:
            subprocess.run([
                               "zip", "-qj", patched_jar
                           ] + [os.path.join(decompile_dir, f"{d}.dex") for d in class_dirs], check=True)
            logging.info(f"Created patched JAR: {patched_jar}")
            return True
        except subprocess.CalledProcessError as e:
            logging.error(f"Failed to create patched JAR: {e}")
            return False
    return False


def patch_jar(jar_name, patch_script, api_level):
    """Patches a JAR file by decompiling, applying patches, and recompiling."""
    logging.info(f"Starting patch process for {jar_name}")

    # Ensure the jar exists
    if not os.path.exists(f"{jar_name}.jar"):
        logging.error(f"{jar_name}.jar not found.")
        return False

    # Clean previous decompile directory if it exists
    decompile_dir = f"{jar_name}_decompile"
    if os.path.exists(decompile_dir):
        shutil.rmtree(decompile_dir)

    # Decompile
    if not decompile_dex(jar_name, api_level):
        return False

    # Apply patches
    try:
        subprocess.run(["python", patch_script, decompile_dir], check=True)
        logging.info(f"Successfully applied patches using {patch_script}")
    except subprocess.CalledProcessError as e:
        logging.error(f"Failed to apply patches: {e}")
        return False

    # Recompile
    return recompile_dex(jar_name, api_level)


def main():
    parser = argparse.ArgumentParser(description="Patch Android JAR files.")
    parser.add_argument("--api_level", required=True, help="Android API level for baksmali.")
    parser.add_argument("--framework", action="store_true", help="Patch framework.jar")
    parser.add_argument("--services", action="store_true", help="Patch services.jar")
    parser.add_argument("--miui-services", action="store_true", help="Patch miui-services.jar")
    args = parser.parse_args()

    # Patch requested JARs
    if args.framework:
        patch_jar("framework", "framework_patch.py", args.api_level)
    if args.services:
        patch_jar("services", "services_patch.py", args.api_level)
    if args.miui_services:
        patch_jar("miui-services", "miui_services_patch.py", args.api_level)


if __name__ == "__main__":
    main()

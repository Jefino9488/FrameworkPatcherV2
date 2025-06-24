import argparse
import logging
import os
import shutil
import subprocess
from datetime import datetime

logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')


def verify_jar_size(jar_file):
    """Verify JAR file size is reasonable."""
    MIN_SIZE = 1500000  # 1.5MB minimum
    if os.path.getsize(jar_file) < MIN_SIZE:
        logging.error(f"Error: {jar_file} is too small. Download might have failed.")
        return False
    return True


def extract_jar(jar_file, output_dir):
    """Extract JAR file using 7z."""
    try:
        subprocess.run(["7z", "x", jar_file, f"-o{output_dir}"], check=True)
        return True
    except subprocess.CalledProcessError as e:
        logging.error(f"Failed to extract {jar_file}: {e}")
        return False


def decompile_dex(jar_name, api_level):
    """Decompile dex files to smali."""
    base_dir = jar_name.replace('.jar', '')
    decompile_dir = f"{base_dir}_decompile"

    # Handle main classes.dex
    if os.path.exists(os.path.join(base_dir, "classes.dex")):
        try:
            os.makedirs(os.path.join(decompile_dir, "classes"), exist_ok=True)
            subprocess.run([
                "java", "-jar", "tools/baksmali.jar",
                "d",
                "-a", str(api_level),
                os.path.join(base_dir, "classes.dex"),
                "-o", os.path.join(decompile_dir, "classes")
            ], check=True)
            logging.info(f"Decompiled {base_dir}/classes.dex")
        except subprocess.CalledProcessError as e:
            logging.error(f"Failed to decompile {base_dir}/classes.dex: {e}")
            return False

    # Handle classes2-5.dex
    for i in range(2, 6):
        dex_file = os.path.join(base_dir, f"classes{i}.dex")
        if os.path.exists(dex_file):
            try:
                os.makedirs(os.path.join(decompile_dir, f"classes{i}"), exist_ok=True)
                subprocess.run([
                    "java", "-jar", "tools/baksmali.jar",
                    "d",
                    "-a", str(api_level),
                    dex_file,
                    "-o", os.path.join(decompile_dir, f"classes{i}")
                ], check=True)
                logging.info(f"Decompiled {dex_file}")
            except subprocess.CalledProcessError as e:
                logging.error(f"Failed to decompile {dex_file}: {e}")
                return False
    return True


def recompile_dex(jar_name, api_level):
    """Recompile smali back to dex."""
    base_dir = jar_name.replace('.jar', '')
    decompile_dir = f"{base_dir}_decompile"

    # Handle main classes
    if os.path.exists(os.path.join(decompile_dir, "classes")):
        try:
            subprocess.run([
                "java", "-jar", "tools/smali.jar",
                "a",
                "-a", str(api_level),
                os.path.join(decompile_dir, "classes"),
                "-o", os.path.join(base_dir, "classes.dex")
            ], check=True)
            logging.info(f"Recompiled {base_dir}/classes.dex")
        except subprocess.CalledProcessError as e:
            logging.error(f"Failed to recompile classes: {e}")
            return False

    # Handle classes2-5
    for i in range(2, 6):
        class_dir = os.path.join(decompile_dir, f"classes{i}")
        if os.path.exists(class_dir):
            try:
                subprocess.run([
                    "java", "-jar", "tools/smali.jar",
                    "a",
                    "-a", str(api_level),
                    class_dir,
                    "-o", os.path.join(base_dir, f"classes{i}.dex")
                ], check=True)
                logging.info(f"Recompiled {base_dir}/classes{i}.dex")
            except subprocess.CalledProcessError as e:
                logging.error(f"Failed to recompile classes{i}: {e}")
                return False
    return True


def create_patched_jar(jar_name):
    """Create patched JAR using 7z and zipalign."""
    base_dir = jar_name.replace('.jar', '')
    new_zip = f"{base_dir}_new.zip"
    aligned_jar = f"aligned_{jar_name}"

    try:
        # Create new zip
        subprocess.run([
            "7z", "a", "-tzip", new_zip, f"{base_dir}/*"
        ], check=True)

        # Align the zip
        subprocess.run([
            "zipalign", "-f", "-p", "-v", "4",
            new_zip, aligned_jar
        ], check=True)

        return aligned_jar
    except subprocess.CalledProcessError as e:
        logging.error(f"Failed to create aligned JAR {aligned_jar}: {e}")
        return None


def patch_jar(jar_name, patch_script, api_level):
    """Patch a JAR file with all necessary steps."""
    jar_file = f"{jar_name}.jar"

    # Verify jar size
    if not verify_jar_size(jar_file):
        return False

    logging.info(f"Processing {jar_file}...")

    # Clean previous directories
    for dir_name in [jar_name, f"{jar_name}_decompile"]:
        if os.path.exists(dir_name):
            shutil.rmtree(dir_name)
        os.makedirs(dir_name)

    # Extract jar
    if not extract_jar(jar_file, jar_name):
        return False

    # Decompile dex files
    if not decompile_dex(jar_name, api_level):
        return False

    # Apply patches
    try:
        subprocess.run(["python", patch_script, f"{jar_name}_decompile"], check=True)
        logging.info(f"Successfully applied patches using {patch_script}")
    except subprocess.CalledProcessError as e:
        logging.error(f"Failed to apply patches: {e}")
        return False

    # Recompile dex files
    if not recompile_dex(jar_name, api_level):
        return False

    # Create aligned jar
    aligned_jar = create_patched_jar(jar_name)
    if not aligned_jar:
        return False

    # Move to final location
    patched_jar = f"{jar_name}_patched.jar"
    shutil.move(aligned_jar, patched_jar)
    logging.info(f"Created patched JAR: {patched_jar}")

    return True


def create_magisk_module(framework_path=None, services_path=None, miui_services_path=None):
    """Create Magisk module with patched JARs."""
    os.makedirs("magisk_module/system/framework", exist_ok=True)
    os.makedirs("magisk_module/system/system_ext/framework", exist_ok=True)

    # Copy patched JARs to module
    if framework_path and os.path.exists(framework_path):
        shutil.copy2(framework_path, "magisk_module/system/framework/framework.jar")
    if services_path and os.path.exists(services_path):
        shutil.copy2(services_path, "magisk_module/system/framework/services.jar")
    if miui_services_path and os.path.exists(miui_services_path):
        shutil.copy2(miui_services_path, "magisk_module/system/system_ext/framework/miui-services.jar")

    # Create module zip
    timestamp = datetime.now().strftime("%Y%m%d%H%M%S")
    module_zip = f"framework_patch_{timestamp}.zip"
    subprocess.run([
        "7z", "a", "-tzip", module_zip, "./magisk_module/*"
    ], check=True)

    return module_zip


def main():
    parser = argparse.ArgumentParser(description="Patch Android JAR files.")
    parser.add_argument("--api_level", required=True, help="Android API level for baksmali.")
    parser.add_argument("--framework", action="store_true", help="Patch framework.jar")
    parser.add_argument("--services", action="store_true", help="Patch services.jar")
    parser.add_argument("--miui-services", action="store_true", help="Patch miui-services.jar")
    args = parser.parse_args()

    patched_files = {}

    # Patch requested JARs
    if args.framework:
        if patch_jar("framework", "framework_patch.py", args.api_level):
            patched_files['framework'] = "framework_patched.jar"
    if args.services:
        if patch_jar("services", "services_patch.py", args.api_level):
            patched_files['services'] = "services_patched.jar"
    if args.miui_services:
        if patch_jar("miui-services", "miui_services_patch.py", args.api_level):
            patched_files['miui_services'] = "miui-services_patched.jar"

    # Create Magisk module
    if patched_files:
        module_zip = create_magisk_module(
            patched_files.get('framework'),
            patched_files.get('services'),
            patched_files.get('miui_services')
        )
        logging.info(f"Created Magisk module: {module_zip}")
    else:
        logging.error("No files were successfully patched")


if __name__ == "__main__":
    main()
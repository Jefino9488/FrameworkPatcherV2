import argparse
import logging
import os
import shutil
import subprocess

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
    """Create patched JAR using 7z and optionally zipalign."""
    base_dir = jar_name.replace('.jar', '')
    new_zip = f"{base_dir}_new.zip"
    patched_jar = f"{jar_name}_patched.jar"

    try:
        # Create new zip from within the directory to avoid parent folder in zip
        current_dir = os.getcwd()
        os.chdir(base_dir)
        subprocess.run([
            "7z", "a", "-tzip", f"../{new_zip}", "*"
        ], check=True)
        os.chdir(current_dir)

        # Try to use zipalign if available
        try:
            subprocess.run(["zipalign", "--version"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
            # zipalign exists, use it
            subprocess.run([
                "zipalign", "-f", "-p", "-v", "4",
                new_zip, patched_jar
            ], check=True)
            os.remove(new_zip)  # Clean up intermediate zip
        except (subprocess.CalledProcessError, FileNotFoundError):
            logging.warning("zipalign not found, using direct zip output")
            os.rename(new_zip, patched_jar)

        return patched_jar
    except subprocess.CalledProcessError as e:
        logging.error(f"Failed to create patched JAR {patched_jar}: {e}")
        if os.path.exists(new_zip):
            os.remove(new_zip)
        return None
    finally:
        if 'current_dir' in locals():
            os.chdir(current_dir)


def create_magisk_module(api_level, device_name, version_name, patched_files):
    """Create Magisk module with patched JARs."""
    logging.info("Creating Magisk module...")

    build_dir = "build_module"
    # Clean and recreate build directory
    if os.path.exists(build_dir):
        shutil.rmtree(build_dir)

    # Copy magisk_module template
    shutil.copytree("magisk_module", build_dir)

    # Create required directories
    os.makedirs(f"{build_dir}/system/framework", exist_ok=True)
    os.makedirs(f"{build_dir}/system/system_ext/framework", exist_ok=True)

    # Move patched files to correct locations
    if 'framework' in patched_files:
        shutil.copy2(patched_files['framework'], f"{build_dir}/system/framework/framework.jar")
    if 'services' in patched_files:
        shutil.copy2(patched_files['services'], f"{build_dir}/system/framework/services.jar")
    if 'miui_services' in patched_files:
        shutil.copy2(patched_files['miui_services'],
                     f"{build_dir}/system/system_ext/framework/miui-services.jar")

    # Update module.prop
    module_prop = os.path.join(build_dir, "module.prop")
    with open(module_prop, 'r') as f:
        lines = f.readlines()

    with open(module_prop, 'w') as f:
        for line in lines:
            if line.startswith('version='):
                f.write(f'version={version_name}\n')
            elif line.startswith('versionCode='):
                f.write(f'versionCode={version_name}\n')
            else:
                f.write(line)

    # Create module zip with device and version in name
    zip_name = f"Framework-Patcher-{device_name}-{version_name}.zip"
    current_dir = os.getcwd()
    try:
        os.chdir(build_dir)
        subprocess.run([
            "7z", "a", "-tzip", f"../{zip_name}", "*"
        ], check=True)
        os.chdir(current_dir)
        logging.info(f"Created Magisk module: {zip_name}")
        return zip_name
    except subprocess.CalledProcessError as e:
        logging.error(f"Failed to create module zip: {e}")
        return None
    finally:
        os.chdir(current_dir)


def patch_jar(jar_name, patch_script, api_level):
    """Patch a JAR file with all necessary steps."""
    jar_file = f"{jar_name}.jar"
    if not verify_jar_size(jar_file):
        return None

    logging.info(f"Processing {jar_file}...")

    # Clean previous directories
    for dir_name in [jar_name, f"{jar_name}_decompile"]:
        if os.path.exists(dir_name):
            shutil.rmtree(dir_name)
        os.makedirs(dir_name)

    # Extract and process
    if not extract_jar(jar_file, jar_name):
        return None
    if not decompile_dex(jar_name, api_level):
        return None

    # Apply patches
    try:
        subprocess.run(["python3", patch_script, f"{jar_name}_decompile"], check=True)
        logging.info(f"Successfully applied patches using {patch_script}")
    except subprocess.CalledProcessError as e:
        logging.error(f"Failed to apply patches: {e}")
        return None

    # Recompile
    if not recompile_dex(jar_name, api_level):
        return None

    # Create final jar
    patched_jar = create_patched_jar(jar_name)
    if not patched_jar:
        return None

    logging.info(f"Created patched JAR: {patched_jar}")

    return patched_jar


def main():
    parser = argparse.ArgumentParser(description="Patch Android JAR files.")
    parser.add_argument("--api_level", required=True, help="Android API level for baksmali.")
    parser.add_argument("--device", required=True, help="Device codename (e.g. rothko)")
    parser.add_argument("--version", required=True, help="MIUI/ROM version (e.g. OS2.0.200.33)")
    parser.add_argument("--framework", action="store_true", help="Patch framework.jar")
    parser.add_argument("--services", action="store_true", help="Patch services.jar")
    parser.add_argument("--miui-services", action="store_true", help="Patch miui-services.jar")
    args = parser.parse_args()

    patched_files = {}

    # Patch requested JARs
    if args.framework:
        result = patch_jar("framework", "framework_patch.py", args.api_level)
        if result:
            patched_files['framework'] = result
    if args.services:
        result = patch_jar("services", "services_patch.py", args.api_level)
        if result:
            patched_files['services'] = result
    if args.miui_services:
        result = patch_jar("miui-services", "miui_services_patch.py", args.api_level)
        if result:
            patched_files['miui_services'] = result

    # Create Magisk module if any files were patched
    if patched_files:
        try:
            create_magisk_module(args.api_level, args.device, args.version, patched_files)
        except Exception as e:
            logging.error(f"Failed to create Magisk module: {e}")
    else:
        logging.error("No files were successfully patched")


if __name__ == "__main__":
    main()
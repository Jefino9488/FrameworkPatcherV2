import argparse
import os
import shutil
import subprocess


def patch_jar(jar_name, patch_script, api_level):
    """Decompiles, patches, and recompiles a JAR file using baksmali/smali."""
    jar_file = f"{jar_name}.jar"
    if not os.path.exists(jar_file):
        print(f"Skipping {jar_name} patch: {jar_file} not found.")
        return

    print(f"Patching {jar_name}...")
    decompile_dir = f"{jar_name}_decompile"

    # Clean previous decompile
    if os.path.exists(decompile_dir):
        shutil.rmtree(decompile_dir)

    # Decompile with baksmali
    baksmali_jar = os.path.join("tools", "baksmali.jar")
    dex_files = []
    # Extract all classes*.dex from the jar
    with open(jar_file, 'rb') as f:
        pass  # Extraction logic can be added if needed
    # For now, assume classes.dex exists in the jar's directory
    for i in range(1, 6):
        dex = f"framework/classes{i if i > 1 else ''}.dex"
        if os.path.exists(dex):
            dex_files.append(dex)
    if not dex_files:
        print(f"No dex files found for {jar_name}.")
        return
    for idx, dex_file in enumerate(dex_files):
        out_dir = os.path.join(decompile_dir, f"classes{idx + 1}" if idx > 0 else "classes")
        os.makedirs(out_dir, exist_ok=True)
        subprocess.run([
            "java", "-jar", baksmali_jar, "d", dex_file, "-o", out_dir, "--api", str(api_level)
        ], check=True)

    # Patch
    subprocess.run(["python", patch_script, decompile_dir], check=True)

    # Recompile with smali
    smali_jar = os.path.join("tools", "smali.jar")
    for idx, dex_file in enumerate(dex_files):
        in_dir = os.path.join(decompile_dir, f"classes{idx + 1}" if idx > 0 else "classes")
        out_dex = os.path.join(decompile_dir, f"classes{idx + 1 if idx > 0 else ''}.dex")
        subprocess.run([
            "java", "-jar", smali_jar, "a", in_dir, "-o", out_dex, "--api", str(api_level)
        ], check=True)

    # Repack JAR
    shutil.make_archive(decompile_dir, 'zip', decompile_dir)
    patched_jar = f"{jar_name}_patched.jar"
    output_zip = f"{decompile_dir}.zip"
    if os.path.exists(output_zip):
        os.rename(output_zip, patched_jar)
        print(f"Finished patching {jar_name}. Output: {patched_jar}")
    else:
        print(f"Error: Recompilation failed for {jar_name}. No output zip found.")


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

import logging
import sys

from scripts.helper import Helper, return_void_callback, pre_patch


def main():
    if len(sys.argv) < 2:
        print("Usage: python miui-services_patch.py <decompile_dir>")
        sys.exit(1)

    miui_services_dir = sys.argv[1]
    helper = Helper(miui_services_dir)

    # Pre-patch: disables invoke-custom in equals/hashCode/toString
    pre_patch(miui_services_dir)

    # Patch methods to return void
    helper.find_and_modify_method(
        "com.android.server.pm.MiuiPackageManagerService",
        "verifyIsolationViolation",
        return_void_callback,
    )
    helper.find_and_modify_method(
        "com.android.server.pm.MiuiDefaultPermissionGrantPolicy",
        "canBeUpdate",
        return_void_callback,
    )
    logging.info("miui-services patching complete.")


if __name__ == "__main__":
    main()

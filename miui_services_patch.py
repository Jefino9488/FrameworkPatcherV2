from scripts.helper import *


def main():
    miui_services_dir = "miui_services_decompile"
    helper = Helper(miui_services_dir)

    # Patch miui-services.jar based on 4. miui-services.text
    helper.find_all_and_modify_methods(
        "com.android.server.pm.MiuiPackageManagerService",
        "verifyIsolationViolation",
        return_void_callback
    )
    helper.find_all_and_modify_methods(
        "com.android.server.pm.MiuiDefaultPermissionGrantPolicy",
        "canBeUpdate",
        return_void_callback
    )


if __name__ == "__main__":
    main()

from misc.helper import *


def main():
    miui_services_dir = "miui-services_decompile"
    pre_patch(miui_services_dir)
    helper = Helper(miui_services_dir)

    helper.find_all_and_modify_methods(
        "com.android.server.pm.PackageManagerServiceImpl",
        "verifyIsolationViolation",
        return_void_callback
    )
    helper.find_all_and_modify_methods(
        "com.android.server.pm.PackageManagerServiceImpl",
        "canBeUpdate",
        return_void_callback
    )


if __name__ == "__main__":
    main()

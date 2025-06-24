from scripts.helper import *


def main():
    services_dir = "services_decompile"
    helper = Helper(services_dir)

    # Patch services.jar based on 3. services.text
    helper.find_all_and_modify_methods(
        "com.android.server.pm.PackageManagerService",
        "checkDowngrade",
        return_void_callback
    )
    helper.find_all_and_modify_methods(
        "com.android.server.pm.PackageManagerService",
        "shouldCheckUpgradeKeySetLocked",
        return_false_callback
    )
    helper.find_all_and_modify_methods(
        "com.android.server.pm.PackageManagerService",
        "verifySignatures",
        return_false_callback
    )
    helper.find_all_and_modify_methods(
        "com.android.server.pm.PackageManagerService",
        "compareSignatures",
        return_false_callback
    )
    helper.find_all_and_modify_methods(
        "com.android.server.pm.PackageManagerService",
        "matchSignaturesCompat",
        return_true_callback
    )

    helper.modify_method_by_adding_a_line_before_line(
        "com.android.server.pm.InstallPackageHelper",
        "installPackageAsUser",
        "invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z",
        "    const/4 v12, 0x1"
    )

    helper.find_and_modify_method(
        "com.android.server.pm.ReconcilePackageUtils",
        "<clinit>",
        replace_line_callback("const/4 v0, 0x0", "    const/4 v0, 0x1")
    )


if __name__ == "__main__":
    main()

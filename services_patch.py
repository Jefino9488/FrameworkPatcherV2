import logging
import sys

from scripts.helper import Helper, return_void_callback, return_false_callback, return_true_callback, \
    add_line_before_if_with_string_callback, pre_patch


def main():
    if len(sys.argv) < 2:
        print("Usage: python services_patch.py <decompile_dir>")
        sys.exit(1)

    services_dir = sys.argv[1]
    helper = Helper(services_dir)

    # Pre-patch: disables invoke-custom in equals/hashCode/toString
    pre_patch(services_dir)

    # Patch methods
    helper.find_and_modify_method(
        "com.android.server.pm.PackageManagerServiceUtils",
        "checkDowngrade",
        return_void_callback
    )
    helper.find_and_modify_method(
        "com.android.server.pm.KeySetManagerService",
        "shouldCheckUpgradeKeySetLocked",
        return_false_callback
    )
    helper.find_and_modify_method(
        "com.android.server.pm.PackageManagerServiceUtils",
        "verifySignatures",
        return_false_callback
    )
    helper.find_and_modify_method(
        "com.android.server.pm.PackageManagerServiceUtils",
        "compareSignatures",
        return_false_callback
    )
    helper.find_and_modify_method(
        "com.android.server.pm.PackageManagerServiceUtils",
        "matchSignaturesCompat",
        return_true_callback
    )

    # Add line before if-statement in installPackageAsUser
    helper.find_and_modify_method(
        "com.android.server.pm.InstallPackageHelper",
        "preparePackageLI",
        add_line_before_if_with_string_callback(
            unique_string="invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z",
            new_line="const/4 v12, 0x1",
            if_pattern="if-eqz"
        )
    )

    # Example for replace_line_callback usage (add your own logic as needed)
    # helper.find_and_modify_method(
    #     "com.android.server.pm.SomeClass",
    #     "someMethod",
    #     replace_line_callback("line_to_find", "line_to_replace")
    # )

    logging.info("services patching complete.")


if __name__ == "__main__":
    main()

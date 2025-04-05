# framework_patch.py
import os
import sys

from scripts.helper import Helper, pre_patch, return_true_callback, return_false_callback


def main(dsv, isa15):
    # Base directories for decompiled classes (from decompile.sh)
    base_dirs = ["classes"] + [f"classes{i}" for i in range(2, 6)]

    # Only apply patches if disable signature verification is enabled
    if not dsv:
        print("DSV (Disable Signature Verification) is disabled, skipping patches.")
        return

    # Process each classes directory if it exists
    for class_dir in base_dirs:
        if not os.path.exists(class_dir):
            print(f"Directory {class_dir} not found, skipping.")
            continue

        print(f"Patching files in {class_dir}")
        pre_patch(class_dir)
        helper = Helper(class_dir)

        # Patch StrictJarVerifier
        helper.find_and_modify_method(
            "android.util.jar.StrictJarVerifier",
            "verifyMessageDigest",
            return_true_callback
        )

        # Patch PackageParser - collectCertificates
        helper.modify_method_by_adding_a_line_before_line(
            "android.content.pm.PackageParser",
            "collectCertificates",
            "invoke-static {v2, v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;",
            "    const/4 v1, 0x1"
        )

        # Patch PackageParser$PackageParserException
        helper.modify_all_method_by_adding_a_line_before_line(
            "android.content.pm.PackageParser$PackageParserException",
            "iput p1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I",
            "    const/4 p1, 0x0"
        )

        # Patch SigningDetails - checkCapability (both classes)
        helper.find_and_modify_method(
            "android.content.pm.PackageParser$SigningDetails",
            "checkCapability",
            return_true_callback
        )
        helper.find_and_modify_method(
            "android.content.pm.SigningDetails",
            "checkCapability",
            return_true_callback
        )

        # Patch SigningDetails - hasAncestorOrSelf
        helper.find_and_modify_method(
            "android.content.pm.SigningDetails",
            "hasAncestorOrSelf",
            return_true_callback
        )

        # Patch ApkSignatureVerifier - getMinimumSignatureSchemeVersionForTargetSdk
        helper.find_and_modify_method(
            "android.util.apk.ApkSignatureVerifier",
            "getMinimumSignatureSchemeVersionForTargetSdk",
            return_false_callback
        )

        # Patch ApkSignatureVerifier - verifyV3AndBelowSignatures
        helper.modify_method_by_adding_a_line_before_line(
            "android.util.apk.ApkSignatureVerifier",
            "verifyV3AndBelowSignatures",
            "invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;",
            "    const p3, 0x0"
        )


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python framework_patch.py <dsv> <isa15>")
        sys.exit(1)

    # Convert string arguments to boolean
    dsv = sys.argv[1].lower() == "true"
    isa15 = sys.argv[2].lower() == "true"

    main(dsv, isa15)

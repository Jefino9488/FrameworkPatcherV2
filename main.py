# main.py
import os
from scripts.helper import Helper, pre_patch, return_true_callback, return_false_callback

def main():
    framework_dir = "framework_decompile"
    pre_patch(framework_dir)
    helper = Helper(framework_dir)
    helper.find_and_modify_method(
        "android.util.jar.StrictJarVerifier",
        "verifyMessageDigest",
        return_true_callback
    )

    helper.modify_method_by_adding_a_line_before_line(
        "android.content.pm.PackageParser",
        "collectCertificates",
        "invoke-static {v2, v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;",
        "    const/4 v1, 0x1"
    )

    helper.modify_all_method_by_adding_a_line_before_line(
        "android.content.pm.PackageParser$PackageParserException",
        "iput p1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I",
        "    const/4 p1, 0x0"
    )

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

    helper.find_and_modify_method(
        "android.content.pm.SigningDetails",
        "hasAncestorOrSelf",
        return_true_callback
    )

    helper.find_and_modify_method(
        "android.util.apk.ApkSignatureVerifier",
        "getMinimumSignatureSchemeVersionForTargetSdk",
        return_false_callback
    )

    helper.modify_method_by_adding_a_line_before_line(
        "android.util.apk.ApkSignatureVerifier",
        "verifyV3AndBelowSignatures",
        "invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;",
        "    const p3, 0x0"
    )

if __name__ == "__main__":
    main()
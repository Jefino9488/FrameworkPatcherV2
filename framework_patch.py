from scripts.helper import *

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

    helper.find_all_and_modify_methods(
        "android.content.pm.PackageParser$SigningDetails",
        "checkCapability",
        return_true_callback
    )

    helper.find_all_and_modify_methods(
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
        "android.content.pm.SigningDetails",
        "checkCapabilityRecover",
        return_true_callback
    )
    helper.find_and_modify_method(
        "android.content.pm.PackageParser$SigningDetails",
        "hasAncestorOrSelf",
        return_true_callback
    )
    helper.find_and_modify_method(
        "android.content.pm.PackageParser$SigningDetails",
        "checkCapabilityRecover",
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

    helper.find_and_modify_method("android.content.pm.PackageParser", "parseBaseApkCommon",
                                  add_line_before_if_with_string_callback(
                                      "\"<manifest> specifies bad sharedUserId name \"\"", "    const/4 v5, 0x1",
                                      "if-nez"))
    helper.find_and_modify_method("android.util.apk.ApkSignatureSchemeV2Verifier", "verifySigner",
                                  replace_result_after_invoke_callback(
                                      "invoke-static {v8, v7}, Ljava/security/MessageDigest;->isEqual([B[B)Z",
                                      "    const/4 v0, 0x1"))
    helper.find_and_modify_method("android.util.apk.ApkSignatureSchemeV3Verifier", "verifySigner",
                                  replace_result_after_invoke_callback(
                                      "invoke-static {v12, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z",
                                      "    const/4 v0, 0x1"))
    helper.find_and_modify_method("android.util.apk.ApkSigningBlockUtils", "verifyIntegrityFor1MbChunkBasedAlgorithm",
                                  replace_result_after_invoke_callback(
                                      "invoke-static {v5, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z",
                                      "    const/4 v7, 0x1"))
    helper.find_and_modify_method("android.util.jar.StrictJarFile", "<init>",
                                  remove_if_and_label_after_invoke_callback(
                                      "invoke-virtual {p0, v5}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;",
                                      "if-eqz"))
    helper.find_and_modify_method("com.android.internal.pm.pkg.parsing.ParsingPackageUtils", "parseSharedUser",
                                  # Adjust method name
                                  add_line_before_if_with_string_callback(
                                      "<manifest> specifies bad sharedUserId name \"", "    const/4 v4, 0x0", "if-eqz"))


if __name__ == "__main__":
    main()

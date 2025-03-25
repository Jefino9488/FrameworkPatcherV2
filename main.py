# main.py
import os
from scripts.helper import Helper, pre_patch, return_true_callback

def main():
    framework_dir = "framework_decompile"
    pre_patch(framework_dir)
    helper = Helper(framework_dir)
    helper.find_and_modify_method(
        "android.util.jar.StrictJarVerifier",
        "verifyMessageDigest",
        return_true_callback
    )

if __name__ == "__main__":
    main()
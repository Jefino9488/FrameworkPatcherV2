# main.py
import os
from scripts.helper import Helper, return_true_callback

def main():
    base_dir = "framework_decompile"  # Matches your decompilation output
    helper = Helper(base_dir)

    # Test finding and modifying StrictJarVerifier
    helper.find_and_modify_method(
        "android.util.jar.StrictJarVerifier",
        "verifyMessageDigest",
        return_true_callback
    )

    # # Test finding and modifying without full package
    # helper.find_all_and_modify_methods(
    #     "StrictJarVerifier",
    #     "verifyMessageDigest",
    #     return_true_callback
    # )

if __name__ == "__main__":
    main()
# Prerequisites for Android 15 JAR File Patching

## ⚠️ Critical Warning

**Editing `.jar` files on Android 15 (HyperOS 2.0) can cause bootloop or random reboot when the device is idle.**

## Required Pre-Processing Steps

Before making any modifications to Android 15 JAR files, you **must** perform the following cleanup steps to avoid system instability.

### Step 1: Clean Up invoke-custom Methods

For each JAR file you plan to edit (`framework.jar`, `services.jar`, `miui-services.jar`), you need to clean up specific methods that contain `invoke-custom` instructions.

#### Search Pattern

Search for: `invoke-custom`

You will find multiple results in methods with these specific names:
- `equals`
- `hashCode`
- `toString`

#### Action Required

**Clear/remove the contents of these methods** to prevent bootloop issues.

### Why This Is Necessary

The `invoke-custom` bytecode instruction introduced in Android O (API level 26) can cause conflicts when JAR files are modified. These instructions in the `equals`, `hashCode`, and `toString` methods are typically auto-generated and can be safely cleared for signature verification patching purposes.

### Verification

After clearing these methods, verify that:
1. No `invoke-custom` instructions remain in `equals`, `hashCode`, or `toString` methods
2. The JAR file structure remains intact
3. All other methods are untouched

---

**Credits:** By @MMETMAmods

**Next Steps:** After completing these prerequisites, proceed to the framework, services, and miui-services patching guides.


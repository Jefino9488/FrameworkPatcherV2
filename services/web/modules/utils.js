// services/web/modules/utils.js

// Extract base codename from full codename (use first word before underscore)
export function extractBaseCodename(fullCodename) {
    try {
        const parts = fullCodename.split('_');
        return parts[0] || fullCodename;
    } catch (error) {
        console.error('Error extracting base codename:', error);
        return fullCodename;
    }
}

// Function to convert Android version to API level
export function androidVersionToApiLevel(androidVersion) {
    const versionMap = {
        '13': '33',
        '14': '34',
        '15': '35',
        '16': '36'
    };
    return versionMap[androidVersion] || androidVersion;
}

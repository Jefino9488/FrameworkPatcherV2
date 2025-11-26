// services/web/modules/main.js
import {androidVersionToApiLevel, extractBaseCodename} from './utils.js';
import {fetchDevices, fetchDeviceSoftware} from './api.js';
import {
    clearForm,
    closeModal,
    getDetectedInfo,
    handleFormSubmit,
    initializeCustomDropdown,
    initializeManualMode,
    populateDeviceDropdown,
    populateVersionDropdown,
    setDetectedInfo,
    showErrorModal,
    updateAvailableFeatures
} from './ui.js';

// Cache for software data to avoid repeated API calls
const softwareDataCache = new Map();
// Cache for devices with no available versions
const devicesWithNoVersions = new Set();

// Initialize the application
document.addEventListener('DOMContentLoaded', function () {
    console.log('Framework Patcher initialized (Module System)');

    initializeForms();
    setupEventListeners();
    loadDevicesData();
});

// Expose global functions for HTML onclick handlers
window.clearForm = clearForm;
window.closeModal = closeModal;

async function loadDevicesData() {
    try {
        const devices = await fetchDevices();
        const deviceSelect = document.querySelector(`[data-select-id="device-name"]`);
        if (deviceSelect) populateDeviceDropdown(deviceSelect, devices);
    } catch (error) {
        console.error('Error loading devices:', error);
    }
}

async function loadDeviceVersions(codename, versionSelect, hiddenVersionInput) {
    try {
        const baseCodename = extractBaseCodename(codename);

        if (devicesWithNoVersions.has(codename)) {
            populateVersionDropdown(versionSelect, hiddenVersionInput, {firmware_versions: [], miui_roms: []});
            return;
        }

        versionSelect.classList.add('loading');

        // Check cache first
        let softwareData = softwareDataCache.get(baseCodename);

        if (!softwareData) {
            softwareData = await fetchDeviceSoftware(codename);
            if (softwareData.firmware_versions.length === 0 && softwareData.miui_roms.length === 0) {
                devicesWithNoVersions.add(codename);
            } else {
                softwareDataCache.set(baseCodename, softwareData);
            }
        }

        populateVersionDropdown(versionSelect, hiddenVersionInput, softwareData);

    } catch (error) {
        console.error('Error loading versions:', error);
        versionSelect.classList.remove('loading');
    }
}

function initializeForms() {
    // Initialize Manual Mode first
    initializeManualMode();

    // Initialize custom dropdowns for unified form
    const deviceSelect = document.querySelector(`[data-select-id="device-name"]`);
    const versionSelect = document.querySelector(`[data-select-id="version-name"]`);
    const hiddenDeviceNameInput = document.getElementById(`device-name`);
    const hiddenDeviceCodenameInput = document.getElementById(`device-codename`);
    const hiddenVersionInput = document.getElementById('version-name');
    const detectedAndroidInput = document.getElementById('detected-android');

    if (deviceSelect && hiddenDeviceNameInput && hiddenDeviceCodenameInput) {
        const deviceDropdown = initializeCustomDropdown(deviceSelect, hiddenDeviceCodenameInput, (value) => {
            console.log(`Device changed to: ${value}`);

            // Get the selected option to extract the full name
            const selectedOption = deviceSelect.dropdownInstance.getOptionByValue(value);
            if (selectedOption) {
                hiddenDeviceNameInput.value = selectedOption.text.split(' (')[0];
            }

            // Clear detected Android version when device changes
            setDetectedInfo(null, null);
            if (detectedAndroidInput) detectedAndroidInput.value = '';

            if (value && versionSelect && hiddenVersionInput) {
                const baseCodename = extractBaseCodename(value);
                console.log(`Using base codename for API: ${baseCodename} (from ${value})`);
                loadDeviceVersions(baseCodename, versionSelect, hiddenVersionInput);
            } else if (versionSelect) {
                const versionTrigger = versionSelect.querySelector('.select-trigger');
                const versionInput = versionTrigger.querySelector('.select-input');
                const optionsList = versionSelect.querySelector('.options-list');
                versionInput.value = 'Select device first...';
                versionInput.placeholder = 'Select device first...';
                optionsList.innerHTML = '<div class="option" value="">Select device first</div>';
                hiddenVersionInput.value = '';
            }
        });
        deviceSelect.dropdownInstance = deviceDropdown;
    }

    if (versionSelect && hiddenVersionInput) {
        const versionDropdown = initializeCustomDropdown(versionSelect, hiddenVersionInput, (value) => {
            console.log(`Version changed to: ${value}`);

            // Detect Android version from selected MIUI ROM
            if (value) {
                const deviceName = hiddenDeviceNameInput.value || '';
                const baseCodename = extractBaseCodename(hiddenDeviceCodenameInput.value);
                const cachedData = softwareDataCache.get(baseCodename);

                if (cachedData && cachedData.miui_roms) {
                    const selectedRom = cachedData.miui_roms.find(rom =>
                        rom.version === value || rom.miui === value
                    );

                    if (selectedRom && selectedRom.android) {
                        const apiLevel = androidVersionToApiLevel(selectedRom.android);
                        setDetectedInfo(selectedRom.android, apiLevel);

                        if (detectedAndroidInput) {
                            detectedAndroidInput.value = `Android ${selectedRom.android} (API ${apiLevel})`;
                        }

                        updateAvailableFeatures(selectedRom.android);
                        console.log(`Detected Android version: ${selectedRom.android}, API Level: ${apiLevel}`);
                    } else {
                        if (detectedAndroidInput) detectedAndroidInput.value = 'Unable to detect (please verify manually)';
                        console.warn('Could not detect Android version from selected ROM');
                    }
                }
            } else {
                setDetectedInfo(null, null);
                if (detectedAndroidInput) detectedAndroidInput.value = '';
            }
        });
        versionSelect.dropdownInstance = versionDropdown;
    }
}

function setupEventListeners() {
    const patcherForm = document.getElementById('patcher-form');
    if (patcherForm) {
        patcherForm.addEventListener('submit', function (e) {
            e.preventDefault();

            const isManualMode = document.getElementById('manual-mode-toggle')?.checked;
            const {detectedAndroidVersion, detectedApiLevel} = getDetectedInfo();

            // Validation Logic
            if (!detectedAndroidVersion || !detectedApiLevel) {
                if (isManualMode) {
                    showErrorModal('Please select the Android Version in Manual Mode.');
                } else {
                    showErrorModal('Please select a device and version first to auto-detect Android version.');
                }
                return;
            }

            const version = parseInt(detectedAndroidVersion);
            if (version < 13) {
                showErrorModal(`Android ${detectedAndroidVersion} is not supported. Minimum required version is Android 13.`);
                return;
            }

            const workflowVersion = `android${detectedAndroidVersion}`;
            handleFormSubmit(workflowVersion, this);
        });
    }
}

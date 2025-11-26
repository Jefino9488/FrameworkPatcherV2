// Configuration
const CONFIG = {
    githubOwner: 'jefino9488',
    githubRepo: 'FrameworkPatcherV2',
    workflows: {
        android13: 'android13.yml',
        android14: 'android14.yml',
        android15: 'android15.yml',
        android16: 'android16.yml'
    },
    // API endpoints
    apiBaseUrl: '/api',
    endpoints: {
        devices: '/devices',
        deviceSoftware: '/devices/{codename}/software'
    }
};

// Cache for devices with no available versions
const devicesWithNoVersions = new Set();

// Cache for software data to avoid repeated API calls
const softwareDataCache = new Map();

// DOM Elements
const patcherForm = document.getElementById('patcher-form');
const detectedAndroidInput = document.getElementById('detected-android');

// Store detected Android information (Global state)
let detectedAndroidVersion = null;
let detectedApiLevel = null;

// Extract base codename from full codename (use first word before underscore)
function extractBaseCodename(fullCodename) {
    try {
        const parts = fullCodename.split('_');
        return parts[0] || fullCodename;
    } catch (error) {
        console.error('Error extracting base codename:', error);
        return fullCodename;
    }
}

// Initialize the application
document.addEventListener('DOMContentLoaded', function () {
    console.log('Framework Patcher initialized');

    initializeForms();
    setupEventListeners();
    loadDevicesData();
});

// Function to convert Android version to API level
function androidVersionToApiLevel(androidVersion) {
    const versionMap = {
        '13': '33',
        '14': '34',
        '15': '35',
        '16': '36'
    };
    return versionMap[androidVersion] || androidVersion;
}

// Function to update available features based on Android version
function updateAvailableFeatures(androidVersion) {
    const cnNotificationFeature = document.getElementById('cn-notification-feature');
    const secureFlagFeature = document.getElementById('secure-flag-feature');
    const manualAndroidSelect = document.getElementById('manual-android-version');

    // Parse Android version as integer
    const version = parseInt(androidVersion);

    // Check if Android version is supported (13+)
    if (version < 13) {
        if (detectedAndroidInput && detectedAndroidInput.offsetParent !== null) {
            detectedAndroidInput.value = `Android ${androidVersion} - NOT SUPPORTED (Minimum: Android 13)`;
            detectedAndroidInput.style.color = 'var(--error)';
        }

        // If manual mode is active, we show error differently or just disable button
        // For now, we just hide features
        cnNotificationFeature.style.display = 'none';
        secureFlagFeature.style.display = 'none';

        const submitButton = patcherForm.querySelector('button[type="submit"]');
        if (submitButton) {
            submitButton.disabled = true;
            submitButton.style.opacity = '0.5';
            submitButton.style.cursor = 'not-allowed';
        }
        return;
    }

    // Reset submit button state for supported versions
    const submitButton = patcherForm.querySelector('button[type="submit"]');
    if (submitButton) {
        submitButton.disabled = false;
        submitButton.style.opacity = '';
        submitButton.style.cursor = '';
    }

    // Reset detected input color
    if (detectedAndroidInput) detectedAndroidInput.style.color = '';

    // Features available for Android 15+
    if (version >= 15) {
        cnNotificationFeature.style.display = 'flex';
        secureFlagFeature.style.display = 'flex';
    } else {
        // Hide and uncheck features for Android 13-14
        cnNotificationFeature.style.display = 'none';
        secureFlagFeature.style.display = 'none';

        // Uncheck the checkboxes
        const cnCheckbox = cnNotificationFeature.querySelector('input[type="checkbox"]');
        const secureCheckbox = secureFlagFeature.querySelector('input[type="checkbox"]');
        if (cnCheckbox) cnCheckbox.checked = false;
        if (secureCheckbox) secureCheckbox.checked = false;
    }
}

// Initialize Manual Mode Toggle and Logic
function initializeManualMode() {
    const toggle = document.getElementById('manual-mode-toggle');
    const smartInputs = document.getElementById('smart-inputs');
    const manualInputs = document.getElementById('manual-inputs');
    const manualAndroidSelect = document.getElementById('manual-android-version');

    if (!toggle) return;

    toggle.addEventListener('change', (e) => {
        const isManual = e.target.checked;

        // Toggle visibility
        smartInputs.style.display = isManual ? 'none' : 'contents';
        manualInputs.style.display = isManual ? 'contents' : 'none';

        // Reset global state when switching modes to avoid stale data
        detectedAndroidVersion = null;
        detectedApiLevel = null;

        // If switching to manual, trigger update if a value is already selected
        if (isManual && manualAndroidSelect.value) {
            const evt = new Event('change');
            manualAndroidSelect.dispatchEvent(evt);
        } else if (!isManual) {
            // If switching back to smart, clear manual validation errors
            document.getElementById('detected-android').value = '';
        }
    });

    // Listen for Manual Android Version changes
    if (manualAndroidSelect) {
        manualAndroidSelect.addEventListener('change', (e) => {
            const version = e.target.value;
            if (version) {
                detectedAndroidVersion = version;
                detectedApiLevel = androidVersionToApiLevel(version);
                updateAvailableFeatures(version);
                console.log(`Manual Mode: Android ${version} selected (API ${detectedApiLevel})`);
            } else {
                detectedAndroidVersion = null;
                detectedApiLevel = null;
            }
        });
    }
}

// Form initialization
function initializeForms() {
    // Initialize Manual Mode first
    initializeManualMode();

    // Initialize custom dropdowns for unified form
    const deviceSelect = document.querySelector(`[data-select-id="device-name"]`);
    const versionSelect = document.querySelector(`[data-select-id="version-name"]`);
    const hiddenDeviceNameInput = document.getElementById(`device-name`);
    const hiddenDeviceCodenameInput = document.getElementById(`device-codename`);
    const hiddenVersionInput = document.getElementById('version-name');

    if (deviceSelect && hiddenDeviceNameInput && hiddenDeviceCodenameInput) {
        const deviceDropdown = initializeCustomDropdown(deviceSelect, hiddenDeviceCodenameInput, (value) => {
            console.log(`Device changed to: ${value}`);

            // Get the selected option to extract the full name
            const selectedOption = deviceSelect.dropdownInstance.getOptionByValue(value);
            if (selectedOption) {
                hiddenDeviceNameInput.value = selectedOption.text.split(' (')[0];
            }

            // Clear detected Android version when device changes
            detectedAndroidVersion = null;
            detectedApiLevel = null;
            detectedAndroidInput.value = '';

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
                        detectedAndroidVersion = selectedRom.android;
                        detectedApiLevel = androidVersionToApiLevel(selectedRom.android);
                        detectedAndroidInput.value = `Android ${selectedRom.android} (API ${detectedApiLevel})`;

                        updateAvailableFeatures(selectedRom.android);
                        console.log(`Detected Android version: ${detectedAndroidVersion}, API Level: ${detectedApiLevel}`);
                    } else {
                        detectedAndroidInput.value = 'Unable to detect (please verify manually)';
                        console.warn('Could not detect Android version from selected ROM');
                    }
                }
            } else {
                detectedAndroidVersion = null;
                detectedApiLevel = null;
                detectedAndroidInput.value = '';
            }
        });
        versionSelect.dropdownInstance = versionDropdown;
    }
}

// Initialize custom dropdown functionality (Standard helper function)
function initializeCustomDropdown(customSelect, hiddenInput, onChangeCallback) {
    const trigger = customSelect.querySelector('.select-trigger');
    const selectInput = trigger.querySelector('.select-input');
    const optionsContainer = customSelect.querySelector('.select-options');
    const searchInput = customSelect.querySelector('.search-input');
    const optionsList = customSelect.querySelector('.options-list');

    let isOpen = false;
    let options = [];

    trigger.addEventListener('click', (e) => {
        e.stopPropagation();
        toggleDropdown();
    });

    if (searchInput) {
        searchInput.addEventListener('input', (e) => filterOptions(e.target.value.toLowerCase()));
        searchInput.addEventListener('click', (e) => e.stopPropagation());
    }

    document.addEventListener('click', (e) => {
        if (!customSelect.contains(e.target)) closeDropdown();
    });

    function toggleDropdown() {
        isOpen ? closeDropdown() : openDropdown();
    }

    function openDropdown() {
        isOpen = true;
        trigger.classList.add('active');
        optionsContainer.classList.add('show');
        if (searchInput) setTimeout(() => searchInput.focus(), 100);
    }

    function closeDropdown() {
        isOpen = false;
        trigger.classList.remove('active');
        optionsContainer.classList.remove('show');
        if (searchInput) {
            searchInput.value = '';
            filterOptions('');
        }
    }

    function filterOptions(searchTerm) {
        const filteredOptions = options.filter(option => {
            if (!option || !option.text) return false;
            return option.text.toLowerCase().includes(searchTerm);
        });
        renderOptions(filteredOptions, searchTerm);
    }

    function renderOptions(optionsToRender, searchTerm = '') {
        if (optionsToRender.length === 0) {
            optionsList.innerHTML = '<div class="option no-results">No results found</div>';
            return;
        }

        optionsList.innerHTML = optionsToRender.map(option => {
            if (option.isGroupLabel) return `<div class="option group-label">${option.text}</div>`;
            const highlightedText = searchTerm ? option.text.replace(new RegExp(`(${searchTerm})`, 'gi'), '<span class="highlight">$1</span>') : option.text;
            return `<div class="option" value="${option.value}">${highlightedText}</div>`;
        }).join('');

        optionsList.querySelectorAll('.option').forEach(option => {
            if (!option.classList.contains('no-results') && !option.classList.contains('group-label')) {
                option.addEventListener('click', () => selectOption(option));
            }
        });
    }

    function selectOption(optionElement) {
        const value = optionElement.getAttribute('value');
        hiddenInput.value = value;
        selectInput.value = optionElement.textContent;
        selectInput.classList.remove('placeholder-style');
        optionsList.querySelectorAll('.option').forEach(opt => opt.classList.remove('selected'));
        optionElement.classList.add('selected');
        closeDropdown();
        if (onChangeCallback) onChangeCallback(value);
    }

    return {
        setOptions: (newOptions) => {
            options = newOptions;
            renderOptions(options);
        },
        setValue: (value) => {
            const option = options.find(opt => opt.value === value);
            if (option) {
                hiddenInput.value = value;
                selectInput.value = option.text;
                if (onChangeCallback) onChangeCallback(value);
            }
        },
        getOptionByValue: (value) => options.find(opt => opt.value === value),
        setDisabled: (disabled) => {
            trigger.style.opacity = disabled ? '0.5' : '1';
            trigger.style.pointerEvents = disabled ? 'none' : 'auto';
            if (disabled) closeDropdown();
        },
        setLoading: (loading) => trigger.classList.toggle('loading', loading)
    };
}

// Event listeners
function setupEventListeners() {
    patcherForm.addEventListener('submit', function (e) {
        e.preventDefault();

        const isManualMode = document.getElementById('manual-mode-toggle')?.checked;

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

// Form submission handler (UPDATED FOR MANUAL MODE)
async function handleFormSubmit(version, form) {
    showModal('loading-modal');

    try {
        const formData = new FormData(form);
        const inputs = {};
        const isManualMode = document.getElementById('manual-mode-toggle')?.checked;

        if (isManualMode) {
            // --- MANUAL MODE: Get values from Manual Inputs ---
            inputs.device_name = document.getElementById('manual-device-name').value;
            inputs.device_codename = document.getElementById('manual-device-codename').value;
            inputs.version_name = document.getElementById('manual-version-name').value;

            // Validate manual inputs
            if (!inputs.device_name || !inputs.device_codename || !inputs.version_name) {
                throw new Error("Please complete all fields in Manual Mode (Name, Codename, Firmware Version).");
            }

            // We need to ensure the version passed is correct based on manual selection
            version = `android${detectedAndroidVersion}`;

        } else {
            // --- SMART MODE: Get values from FormData/Hidden Inputs ---
            for (let [key, value] of formData.entries()) {
                inputs[key] = value;
            }
        }

        // --- COMMON INPUTS (URLs, Features) ---
        inputs.framework_url = document.getElementById('framework-url').value;
        inputs.services_url = document.getElementById('services-url').value;
        inputs.miui_services_url = document.getElementById('miui-services-url').value;

        // Get User ID (optional)
        const userId = document.getElementById('user-id').value;
        if (userId && userId.trim() !== '') {
            inputs.user_id = userId;
        }

        // Handle feature flags manually to ensure checkboxes are caught
        const feature_list = [];
        if (document.querySelector('input[name="enable_signature_bypass"]').checked) feature_list.push('disable_signature_verification');
        if (document.querySelector('input[name="enable_cn_notification_fix"]').checked) feature_list.push('cn_notification_fix');
        if (document.querySelector('input[name="enable_disable_secure_flag"]').checked) feature_list.push('disable_secure_flag');

        inputs.features = feature_list.join(',');
        if (!inputs.features) inputs.features = 'disable_signature_verification';

        // API Level
        if (detectedApiLevel) {
            inputs.api_level = detectedApiLevel;
        } else {
            throw new Error('Android version/API level is missing.');
        }

        console.log(`Triggering workflow: ${version} with inputs:`, inputs);

        const success = await triggerWorkflow(version, inputs);

        if (success) {
            hideModal('loading-modal');
            showModal('success-modal');
        } else {
            throw new Error('Failed to trigger workflow');
        }

    } catch (error) {
        console.error('Error:', error);
        hideModal('loading-modal');
        showErrorModal(error.message);
    }
}

// Trigger workflow via secure API route
async function triggerWorkflow(version, inputs) {
    try {
        const response = await fetch('/api/trigger-workflow', {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify({version: version, inputs: inputs})
        });

        const result = await response.json();

        if (response.ok && result.success) {
            return true;
        } else {
            throw new Error(result.error || 'Failed to trigger workflow');
        }

    } catch (error) {
        throw error; // Let the caller handle the error display
    }
}

// Modal functions
function showModal(modalId) {
    const modal = document.getElementById(modalId);
    if (modal) {
        modal.classList.add('active');
        modal.style.display = 'flex';
    }
}

function hideModal(modalId) {
    const modal = document.getElementById(modalId);
    if (modal) {
        modal.classList.remove('active');
        modal.style.display = 'none';
    }
}

function closeModal(modalId) {
    hideModal(modalId);
}
function showErrorModal(message) {
    document.getElementById('error-message').textContent = message;
    showModal('error-modal');
}

function clearForm(formId) {
    document.getElementById(formId)?.reset();
}

// API Functions for Smart Mode
async function loadDevicesData() {
    try {
        const response = await fetch(CONFIG.apiBaseUrl + CONFIG.endpoints.devices);
        if (!response.ok) throw new Error(`Failed to load devices`);
        const devices = await response.json();

        const deviceSelect = document.querySelector(`[data-select-id="device-name"]`);
        if (deviceSelect) populateDeviceDropdown(deviceSelect, devices);
    } catch (error) {
        console.error('Error loading devices:', error);
        // If devices fail to load, maybe auto-enable manual mode?
        // For now we just log it. User can toggle manual mode manually.
    }
}

function populateDeviceDropdown(customSelect, devices) {
    const sortedDevices = devices.sort((a, b) => a.name.localeCompare(b.name));
    const options = [
        { value: '', text: 'Select a device' },
        ...sortedDevices.map(device => ({
            value: device.codename,
            text: `${device.name} (${device.codename})`
        }))
    ];
    if (customSelect.dropdownInstance) customSelect.dropdownInstance.setOptions(options);
    else {
        customSelect.dropdownInstance = initializeCustomDropdown(
            customSelect,
            document.getElementById(customSelect.dataset.selectId),
            null
        );
        customSelect.dropdownInstance.setOptions(options);
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
        const url = CONFIG.apiBaseUrl + CONFIG.endpoints.deviceSoftware.replace('{codename}', codename);
        const response = await fetch(url);

        if (!response.ok) {
            if (response.status === 404) {
                devicesWithNoVersions.add(codename);
                populateVersionDropdown(versionSelect, hiddenVersionInput, {firmware_versions: [], miui_roms: []});
                return;
            }
            throw new Error('Failed to load versions');
        }

        const softwareData = await response.json();
        softwareDataCache.set(baseCodename, softwareData);
        populateVersionDropdown(versionSelect, hiddenVersionInput, softwareData);

    } catch (error) {
        console.error('Error loading versions:', error);
        versionSelect.classList.remove('loading');
    }
}

function populateVersionDropdown(versionSelect, hiddenVersionInput, softwareData) {
    const miuiRoms = softwareData.miui_roms || [];
    const options = [{value: '', text: 'Select a version'}];

    if (miuiRoms.length > 0) {
        options.push(
            { value: '---miui---', text: 'MIUI ROMs', isGroupLabel: true },
            ...miuiRoms.map(rom => ({
                value: rom.version || rom.miui,
                text: rom.android ? `${rom.version} (Android ${rom.android})` : rom.version
            }))
        );
    } else {
        options[0] = {value: '', text: 'No versions available'};
    }

    if (versionSelect.dropdownInstance) {
        versionSelect.dropdownInstance.setOptions(options);
    } else {
        versionSelect.dropdownInstance = initializeCustomDropdown(versionSelect, hiddenVersionInput, null);
        versionSelect.dropdownInstance.setOptions(options);
    }
    versionSelect.classList.remove('loading');

    // Reset input text
    const input = versionSelect.querySelector('.select-input');
    input.value = options.length > 1 ? 'Select a version' : 'No versions available';
}

// Exports
window.clearForm = clearForm;
window.closeModal = closeModal;
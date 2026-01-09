// services/web/modules/ui.js
import {androidVersionToApiLevel} from './utils.js';
import {triggerWorkflow} from './api.js';

// Global state for detected Android version (module-scoped)
let detectedAndroidVersion = null;
let detectedApiLevel = null;

// Feature to JAR requirements mapping
// Defines which JAR files are required for each feature
const FEATURE_JAR_REQUIREMENTS = {
    "enable_signature_bypass": ["framework.jar", "services.jar", "miui-services.jar"],
    "enable_cn_notification_fix": ["miui-services.jar"],
    "enable_disable_secure_flag": ["services.jar", "miui-services.jar"],
    "enable_kaorios_toolbox": ["framework.jar"]
};

// Modal functions
export function showModal(modalId) {
    const modal = document.getElementById(modalId);
    if (modal) {
        modal.classList.add('active');
        modal.style.display = 'flex';
    }
}

export function hideModal(modalId) {
    const modal = document.getElementById(modalId);
    if (modal) {
        modal.classList.remove('active');
        modal.style.display = 'none';
    }
}

export function closeModal(modalId) {
    hideModal(modalId);
}

export function showErrorModal(message) {
    const errorMsg = document.getElementById('error-message');
    if (errorMsg) errorMsg.textContent = message;
    showModal('error-modal');
}

export function clearForm(formId) {
    document.getElementById(formId)?.reset();
}

// Custom Dropdown Logic
export function initializeCustomDropdown(customSelect, hiddenInput, onChangeCallback) {
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

export function populateDeviceDropdown(customSelect, devices) {
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

export function populateVersionDropdown(versionSelect, hiddenVersionInput, softwareData) {
    const miuiRoms = softwareData.miui_roms || [];
    const options = [{ value: '', text: 'Select a version' }];

    if (miuiRoms.length > 0) {
        options.push(
            { value: '---miui---', text: 'MIUI ROMs', isGroupLabel: true },
            ...miuiRoms.map(rom => ({
                value: rom.version || rom.miui,
                text: rom.android ? `${rom.version} (Android ${rom.android})` : rom.version
            }))
        );
    } else {
        options[0] = { value: '', text: 'No versions available' };
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

// Calculate which JARs are required based on selected features
export function getRequiredJars() {
    const requiredJars = new Set();

    // Check each feature checkbox
    const signatureCheckbox = document.querySelector('input[name="enable_signature_bypass"]');
    const cnNotifCheckbox = document.querySelector('input[name="enable_cn_notification_fix"]');
    const secureCheckbox = document.querySelector('input[name="enable_disable_secure_flag"]');
    const kaoriosCheckbox = document.querySelector('input[name="enable_kaorios_toolbox"]');

    if (signatureCheckbox?.checked) {
        FEATURE_JAR_REQUIREMENTS["enable_signature_bypass"].forEach(jar => requiredJars.add(jar));
    }
    if (cnNotifCheckbox?.checked) {
        FEATURE_JAR_REQUIREMENTS["enable_cn_notification_fix"].forEach(jar => requiredJars.add(jar));
    }
    if (secureCheckbox?.checked) {
        FEATURE_JAR_REQUIREMENTS["enable_disable_secure_flag"].forEach(jar => requiredJars.add(jar));
    }
    if (kaoriosCheckbox?.checked) {
        FEATURE_JAR_REQUIREMENTS["enable_kaorios_toolbox"].forEach(jar => requiredJars.add(jar));
    }

    // Default to signature bypass if nothing selected
    if (requiredJars.size === 0) {
        FEATURE_JAR_REQUIREMENTS["enable_signature_bypass"].forEach(jar => requiredJars.add(jar));
    }

    return requiredJars;
}

// Update JAR input fields visibility and required status based on selected features
export function updateRequiredJars() {
    const requiredJars = getRequiredJars();

    const frameworkInput = document.getElementById('framework-url');
    const servicesInput = document.getElementById('services-url');
    const miuiServicesInput = document.getElementById('miui-services-url');

    const frameworkGroup = frameworkInput?.closest('.form-group');
    const servicesGroup = servicesInput?.closest('.form-group');
    const miuiServicesGroup = miuiServicesInput?.closest('.form-group');

    // Update framework.jar
    if (frameworkGroup && frameworkInput) {
        const isRequired = requiredJars.has('framework.jar');
        frameworkGroup.style.display = isRequired ? 'block' : 'none';
        frameworkInput.required = isRequired;
        if (!isRequired) frameworkInput.value = '';
    }

    // Update services.jar
    if (servicesGroup && servicesInput) {
        const isRequired = requiredJars.has('services.jar');
        servicesGroup.style.display = isRequired ? 'block' : 'none';
        servicesInput.required = isRequired;
        if (!isRequired) servicesInput.value = '';
    }

    // Update miui-services.jar
    if (miuiServicesGroup && miuiServicesInput) {
        const isRequired = requiredJars.has('miui-services.jar');
        miuiServicesGroup.style.display = isRequired ? 'block' : 'none';
        miuiServicesInput.required = isRequired;
        if (!isRequired) miuiServicesInput.value = '';
    }

    // Log for debugging
    console.log('Required JARs:', Array.from(requiredJars));
}

export function updateAvailableFeatures(androidVersion) {
    const cnNotificationFeature = document.getElementById('cn-notification-feature');
    const secureFlagFeature = document.getElementById('secure-flag-feature');
    const kaoriosToolboxFeature = document.getElementById('kaorios-toolbox-feature');
    const detectedAndroidInput = document.getElementById('detected-android');
    const patcherForm = document.getElementById('patcher-form');

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
        if (kaoriosToolboxFeature) kaoriosToolboxFeature.style.display = 'none';

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

    // Features available for Android 13+
    if (version >= 13) {
        if (kaoriosToolboxFeature) kaoriosToolboxFeature.style.display = 'flex';
    } else {
        if (kaoriosToolboxFeature) kaoriosToolboxFeature.style.display = 'none';
        const kaoriosCheckbox = kaoriosToolboxFeature?.querySelector('input[type="checkbox"]');
        if (kaoriosCheckbox) kaoriosCheckbox.checked = false;
    }

    // Update required JAR fields based on current feature selection
    updateRequiredJars();
}

export function initializeManualMode() {
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
        setDetectedInfo(null, null);

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
                const apiLevel = androidVersionToApiLevel(version);
                setDetectedInfo(version, apiLevel);
                updateAvailableFeatures(version);
                console.log(`Manual Mode: Android ${version} selected (API ${apiLevel})`);
            } else {
                setDetectedInfo(null, null);
            }
        });
    }
}

// Helper to set global state
export function setDetectedInfo(version, apiLevel) {
    detectedAndroidVersion = version;
    detectedApiLevel = apiLevel;
}

export function getDetectedInfo() {
    return { detectedAndroidVersion, detectedApiLevel };
}

// Form submission handler
export async function handleFormSubmit(version, form) {
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

        // --- COMMON INPUTS (JAR URLs - only include required ones) ---
        const requiredJars = getRequiredJars();

        const frameworkUrl = document.getElementById('framework-url').value;
        const servicesUrl = document.getElementById('services-url').value;
        const miuiServicesUrl = document.getElementById('miui-services-url').value;

        // Only include JAR URLs that are required
        if (requiredJars.has('framework.jar')) {
            if (!frameworkUrl) throw new Error('framework.jar URL is required for the selected features.');
            inputs.framework_url = frameworkUrl;
        }
        if (requiredJars.has('services.jar')) {
            if (!servicesUrl) throw new Error('services.jar URL is required for the selected features.');
            inputs.services_url = servicesUrl;
        }
        if (requiredJars.has('miui-services.jar')) {
            if (!miuiServicesUrl) throw new Error('miui-services.jar URL is required for the selected features.');
            inputs.miui_services_url = miuiServicesUrl;
        }

        // Get User ID (optional)
        const userId = document.getElementById('user-id').value;
        if (userId && userId.trim() !== '') {
            inputs.user_id = userId;
        }

        // Handle feature flags manually to ensure checkboxes are caught
        const feature_list = [];
        if (document.querySelector('input[name="enable_signature_bypass"]')?.checked) feature_list.push('disable_signature_verification');
        if (document.querySelector('input[name="enable_cn_notification_fix"]')?.checked) feature_list.push('cn_notification_fix');
        if (document.querySelector('input[name="enable_disable_secure_flag"]')?.checked) feature_list.push('disable_secure_flag');
        if (document.querySelector('input[name="enable_kaorios_toolbox"]')?.checked) feature_list.push('kaorios_toolbox');

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

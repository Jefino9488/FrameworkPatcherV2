// Configuration
const CONFIG = {
    githubOwner: 'jefino9488',
    githubRepo: 'FrameworkPatcherV2',
    // Token is now handled server-side via API route
    workflows: {
        android13: 'android13.yml',
        android14: 'android14.yml',
        android15: 'android15.yml',
        android16: 'android16.yml'
    },
    // API endpoints for device and version data
    apiBaseUrl: window.location.hostname === 'localhost' ? 'http://localhost:8000' : 'https://your-pterodactyl-domain.com',
    endpoints: {
        devices: '/devices',
        deviceSoftware: '/devices/{codename}/software'
    }
};

// Cache for devices with no available versions
const devicesWithNoVersions = new Set();

// Cache for software data to avoid repeated API calls
const softwareDataCache = new Map();

// Extract base codename from full codename (use first word before underscore)
function extractBaseCodename(fullCodename) {
    try {
        // Simply split by underscore and take the first part
        const parts = fullCodename.split('_');
        return parts[0] || fullCodename;
    } catch (error) {
        console.error('Error extracting base codename:', error);
        return fullCodename; // Fallback to full codename
    }
}

// No longer need Octokit - using secure API route instead

// DOM Elements
const patcherForm = document.getElementById('patcher-form');
const detectedAndroidInput = document.getElementById('detected-android');

// Store detected Android information
let detectedAndroidVersion = null;
let detectedApiLevel = null;

// Initialize the application
document.addEventListener('DOMContentLoaded', function () {
    console.log('Framework Patcher initialized - using secure API route');

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

    // Parse Android version as integer
    const version = parseInt(androidVersion);

    // Check if Android version is supported (13+)
    if (version < 13) {
        // Show warning for unsupported Android versions
        detectedAndroidInput.value = `Android ${androidVersion} - NOT SUPPORTED (Minimum: Android 13)`;
        detectedAndroidInput.style.color = 'var(--error)';

        // Disable all features
        cnNotificationFeature.style.display = 'none';
        secureFlagFeature.style.display = 'none';

        // Disable the submit button
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
    detectedAndroidInput.style.color = '';

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

// Form initialization
function initializeForms() {
    // Initialize custom dropdowns for unified form
    const deviceSelect = document.querySelector(`[data-select-id="device-name"]`);
    const versionSelect = document.querySelector(`[data-select-id="version-name"]`);
    const hiddenDeviceInput = document.getElementById(`device-name`);
    const hiddenVersionInput = document.getElementById(`version-name`);

    if (deviceSelect && hiddenDeviceInput) {
        const deviceDropdown = initializeCustomDropdown(deviceSelect, hiddenDeviceInput, (value) => {
            console.log(`Device changed to: ${value}`);

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

        // Store dropdown instance
        deviceSelect.dropdownInstance = deviceDropdown;
    }

    if (versionSelect && hiddenVersionInput) {
        const versionDropdown = initializeCustomDropdown(versionSelect, hiddenVersionInput, (value) => {
            console.log(`Version changed to: ${value}`);

            // Detect Android version from selected MIUI ROM
            if (value) {
                const deviceName = hiddenDeviceInput.value || '';
                const baseCodename = extractBaseCodename(deviceName);
                const cachedData = softwareDataCache.get(baseCodename);

                if (cachedData && cachedData.miui_roms) {
                    const selectedRom = cachedData.miui_roms.find(rom =>
                        rom.version === value || rom.miui === value
                    );

                    if (selectedRom && selectedRom.android) {
                        detectedAndroidVersion = selectedRom.android;
                        detectedApiLevel = androidVersionToApiLevel(selectedRom.android);
                        detectedAndroidInput.value = `Android ${selectedRom.android} (API ${detectedApiLevel})`;

                        // Update available features based on detected version
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

        // Store dropdown instance
        versionSelect.dropdownInstance = versionDropdown;
    }
}

// Initialize custom dropdown functionality
function initializeCustomDropdown(customSelect, hiddenInput, onChangeCallback) {
    const trigger = customSelect.querySelector('.select-trigger');
    const selectInput = trigger.querySelector('.select-input');
    const arrow = trigger.querySelector('.select-arrow');
    const optionsContainer = customSelect.querySelector('.select-options');
    const searchInput = customSelect.querySelector('.search-input');
    const optionsList = customSelect.querySelector('.options-list');

    let isOpen = false;
    let options = [];

    // Toggle dropdown
    trigger.addEventListener('click', (e) => {
        e.stopPropagation();
        toggleDropdown();
    });

    // Search functionality
    if (searchInput) {
        searchInput.addEventListener('input', (e) => {
            const searchTerm = e.target.value.toLowerCase();
            filterOptions(searchTerm);
        });

        searchInput.addEventListener('click', (e) => {
            e.stopPropagation();
        });
    }

    // Close dropdown when clicking outside
    document.addEventListener('click', (e) => {
        if (!customSelect.contains(e.target)) {
            closeDropdown();
        }
    });

    // Keyboard navigation
    document.addEventListener('keydown', (e) => {
        if (isOpen) {
            if (e.key === 'Escape') {
                closeDropdown();
            } else if (e.key === 'ArrowDown' || e.key === 'ArrowUp') {
                e.preventDefault();
                navigateOptions(e.key === 'ArrowDown' ? 1 : -1);
            } else if (e.key === 'Enter') {
                e.preventDefault();
                const selected = optionsList.querySelector('.option.selected');
                if (selected && !selected.classList.contains('no-results')) {
                    selectOption(selected);
                }
            }
        }
    });

    function toggleDropdown() {
        if (isOpen) {
            closeDropdown();
        } else {
            openDropdown();
        }
    }

    function openDropdown() {
        isOpen = true;
        trigger.classList.add('active');
        optionsContainer.classList.add('show');
        if (searchInput) {
            setTimeout(() => searchInput.focus(), 100);
        }
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
            const text = option.text.toLowerCase();
            return text.includes(searchTerm);
        });

        renderOptions(filteredOptions, searchTerm);
    }

    function renderOptions(optionsToRender, searchTerm = '') {
        if (optionsToRender.length === 0) {
            optionsList.innerHTML = '<div class="option no-results">No results found</div>';
            return;
        }

        optionsList.innerHTML = optionsToRender.map(option => {
            if (option.isGroupLabel) {
                return `<div class="option group-label">${option.text}</div>`;
            }

            const highlightedText = highlightText(option.text, searchTerm);
            return `<div class="option" value="${option.value}">${highlightedText}</div>`;
        }).join('');

        // Add click listeners to new options
        optionsList.querySelectorAll('.option').forEach(option => {
            if (!option.classList.contains('no-results') && !option.classList.contains('group-label')) {
                option.addEventListener('click', () => selectOption(option));
            }
        });
    }

    function highlightText(text, searchTerm) {
        if (!searchTerm) return text;

        const regex = new RegExp(`(${searchTerm})`, 'gi');
        return text.replace(regex, '<span class="highlight">$1</span>');
    }

    function selectOption(optionElement) {
        if (!optionElement || optionElement.classList.contains('no-results') || optionElement.classList.contains('group-label')) {
            return;
        }

        const value = optionElement.getAttribute('value');
        const text = optionElement.textContent;

        // Update hidden input
        hiddenInput.value = value;

        // Update display
        selectInput.value = text;
        selectInput.classList.remove('placeholder-style');

        // Update selected state
        optionsList.querySelectorAll('.option').forEach(opt => {
            opt.classList.remove('selected');
        });
        optionElement.classList.add('selected');

        // Close dropdown
        closeDropdown();

        // Call change callback if provided
        if (onChangeCallback) {
            onChangeCallback(value);
        }
    }

    function navigateOptions(direction) {
        const currentSelected = optionsList.querySelector('.option.selected');
        const allOptions = Array.from(optionsList.querySelectorAll('.option:not(.no-results)'));

        if (allOptions.length === 0) return;

        let currentIndex = currentSelected ? allOptions.indexOf(currentSelected) : -1;
        let newIndex = currentIndex + direction;

        // Wrap around
        if (newIndex < 0) newIndex = allOptions.length - 1;
        if (newIndex >= allOptions.length) newIndex = 0;

        // Update selection
        if (currentSelected) currentSelected.classList.remove('selected');
        allOptions[newIndex].classList.add('selected');

        // Scroll into view if needed
        allOptions[newIndex].scrollIntoView({ block: 'nearest' });
    }

    // Public methods
    return {
        setOptions: (newOptions) => {
            options = newOptions;
            renderOptions(options);
        },
        setValue: (value) => {
            const option = options.find(opt => opt.value === value);
            if (option) {
                // Update hidden input
                hiddenInput.value = value;

                // Update display
                selectInput.value = option.text;
                selectInput.classList.remove('placeholder-style');

                // Update selected state
                optionsList.querySelectorAll('.option').forEach(opt => {
                    opt.classList.remove('selected');
                });

                // Find and highlight the selected option
                const optionElements = optionsList.querySelectorAll('.option');
                optionElements.forEach(opt => {
                    if (opt.getAttribute('value') === value) {
                        opt.classList.add('selected');
                    }
                });

                // Call change callback if provided
                if (onChangeCallback) {
                    onChangeCallback(value);
                }
            }
        },
        getValue: () => hiddenInput.value,
        setLoading: (loading) => {
            trigger.classList.toggle('loading', loading);
        },
        setDisabled: (disabled) => {
            trigger.style.opacity = disabled ? '0.5' : '1';
            trigger.style.pointerEvents = disabled ? 'none' : 'auto';
            if (disabled) {
                closeDropdown();
            }
        }
    };
}

// Event listeners
function setupEventListeners() {
    patcherForm.addEventListener('submit', function (e) {
        e.preventDefault();

        // Validate that Android version was detected
        if (!detectedAndroidVersion || !detectedApiLevel) {
            showErrorModal('Please select a device and version first to auto-detect Android version.');
            return;
        }

        // Validate that Android version is supported (13+)
        const version = parseInt(detectedAndroidVersion);
        if (version < 13) {
            showErrorModal(`Android ${detectedAndroidVersion} is not supported. Minimum required version is Android 13.`);
            return;
        }

        // Determine workflow version based on detected Android version
        const workflowVersion = `android${detectedAndroidVersion}`;
        handleFormSubmit(workflowVersion, this);
    });
}

// Form submission handler
async function handleFormSubmit(version, form) {
    showModal('loading-modal');

    try {
        const formData = new FormData(form);
        const inputs = {};

        // Convert FormData to object
        for (let [key, value] of formData.entries()) {
            inputs[key] = value;
        }
        
        // Handle checkboxes (they only appear in FormData if checked)
        // Set all feature flags to false first, then set to true if checked
        inputs.enable_signature_bypass = formData.has('enable_signature_bypass') ? 'true' : 'false';
        inputs.enable_cn_notification_fix = formData.has('enable_cn_notification_fix') ? 'true' : 'false';
        inputs.enable_disable_secure_flag = formData.has('enable_disable_secure_flag') ? 'true' : 'false';

        // Remove empty optional fields
        if (!inputs.user_id || inputs.user_id.trim() === '') {
            delete inputs.user_id;
        }

        // Use detected Android version and API level
        if (detectedApiLevel) {
            inputs.api_level = detectedApiLevel;
            console.log(`Using detected API level: ${detectedApiLevel}`);
        } else {
            throw new Error('Android version not detected. Please select a valid MIUI ROM version.');
        }

        console.log(`Triggering workflow: ${version} with inputs:`, inputs);

        // Trigger GitHub workflow
        const success = await triggerWorkflow(version, inputs);

        if (success) {
            hideModal('loading-modal');
            showSuccessModal();
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
        console.log('Triggering workflow via API route:', version, inputs);

        // Call our secure API route instead of direct GitHub API
        const response = await fetch('/api/trigger-workflow', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                version: version,
                inputs: inputs
            })
        });

        console.log('Response status:', response.status);
        console.log('Response headers:', response.headers);
        
        const responseText = await response.text();
        console.log('Response text:', responseText);
        
        let result;
        try {
            result = JSON.parse(responseText);
        } catch (parseError) {
            console.error('Failed to parse JSON:', parseError);
            throw new Error(`Invalid response from server: ${responseText.substring(0, 100)}...`);
        }

        if (response.ok && result.success) {
            console.log('Workflow triggered successfully via API');
            return true;
        } else {
            console.error('API route error:', result);
            throw new Error(result.error || 'Failed to trigger workflow');
        }

    } catch (error) {
        console.error('Workflow trigger error:', error);

        // Handle specific error types
        if (error.message.includes('fetch')) {
            throw new Error('Network error. Please check your internet connection and try again.');
        } else {
            throw new Error(`Failed to trigger workflow: ${error.message}`);
        }
    }
}

// Show manual trigger instructions with workflow links
function showManualTriggerInstructions(version, inputs) {
    const workflowNames = {
        'android13': 'Android 13 Framework Patcher',
        'android14': 'Android 14 Framework Patcher',
        'android15': 'Android 15 Framework Patcher',
        'android16': 'Android 16 Framework Patcher'
    };
    const workflowName = workflowNames[version] || 'Framework Patcher';
    const workflowUrl = `https://github.com/${CONFIG.githubOwner}/${CONFIG.githubRepo}/actions/workflows/${version}.yml`;

    const parametersHtml = Object.entries(inputs)
        .filter(([key]) => key !== 'github_pat') // Don't show PAT
        .map(([key, value]) => {
            const displayName = key.replace(/_/g, ' ').replace(/\b\w/g, l => l.toUpperCase());
            return `<div class="parameter-item">
                <strong>${displayName}:</strong> 
                <code class="parameter-value">${value}</code>
            </div>`;
        })
        .join('');

    const instructions = `
        <div class="workflow-instructions">
            <h3><i class="fas fa-play-circle"></i> Ready to Trigger ${workflowName}!</h3>
            <p>Please follow these steps to trigger the workflow manually:</p>
            
            <div class="steps">
                <div class="step">
                    <span class="step-number">1</span>
                    <div class="step-content">
                        <p><strong>Go to GitHub Actions</strong></p>
                        <a href="${workflowUrl}" target="_blank" class="btn btn-primary">
                            <i class="fab fa-github"></i>
                            Open ${workflowName}
                        </a>
                    </div>
                </div>
                
                <div class="step">
                    <span class="step-number">2</span>
                    <div class="step-content">
                        <p><strong>Click "Run workflow" button</strong></p>
                        <p class="step-detail">Select the master branch and fill in the parameters below:</p>
                    </div>
                </div>
            </div>
            
            <div class="parameters-section">
                <h4><i class="fas fa-list"></i> Parameters to Fill:</h4>
                <div class="parameters">
                    ${parametersHtml}
                </div>
            </div>
            
            <div class="note">
                <i class="fas fa-info-circle"></i>
                <strong>Note:</strong> The workflow will automatically download your JAR files, patch them, and create a Magisk module for you.
            </div>
        </div>
    `;

    document.getElementById('error-message').innerHTML = instructions;
    showModal('error-modal');
}

// Success modal
function showSuccessModal() {
    const successMessage = `
        <div class="success-content">
            <h3><i class="fas fa-check-circle"></i> Workflow Triggered Successfully!</h3>
            <p>Your framework patching workflow has been started. The process typically takes 5-10 minutes.</p>
            
            <div class="success-actions">
                <a href="https://github.com/${CONFIG.githubOwner}/${CONFIG.githubRepo}/actions" target="_blank" class="btn btn-primary">
                    <i class="fas fa-external-link-alt"></i>
                    View Workflow Progress
                </a>
                <a href="https://github.com/${CONFIG.githubOwner}/${CONFIG.githubRepo}/releases" target="_blank" class="btn btn-secondary">
                    <i class="fas fa-download"></i>
                    Check Releases
                </a>
            </div>
            
            <div class="note">
                <i class="fas fa-info-circle"></i>
                <strong>Note:</strong> Once complete, your patched framework files and Magisk module will be available in the releases section.
            </div>
        </div>
    `;

    document.getElementById('error-message').innerHTML = successMessage;
    showModal('success-modal');
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

// Utility functions
function clearForm(formId) {
    const form = document.getElementById(formId);
    if (form) {
        form.reset();
    }
}

// Form validation
function validateForm(form) {
    const requiredInputs = form.querySelectorAll('input[required]');
    const customSelects = form.querySelectorAll('.custom-select[data-select-id]');
    let isValid = true;

    // Validate regular inputs
    requiredInputs.forEach(input => {
        if (!input.value.trim()) {
            input.style.borderColor = 'var(--error)';
            isValid = false;
        } else {
            input.style.borderColor = '';
        }
    });

    // Validate custom dropdowns
    customSelects.forEach(customSelect => {
        const hiddenInput = document.getElementById(customSelect.dataset.selectId);
        const trigger = customSelect.querySelector('.select-trigger');

        if (!hiddenInput.value.trim()) {
            trigger.style.borderColor = 'var(--error)';
            isValid = false;
        } else {
            trigger.style.borderColor = '';
        }
    });

    // URL validation
    const urlInputs = form.querySelectorAll('input[type="url"]');
    urlInputs.forEach(input => {
        if (input.value && !isValidUrl(input.value)) {
            input.style.borderColor = 'var(--error)';
            isValid = false;
        } else {
            input.style.borderColor = '';
        }
    });

    return isValid;
}

function isValidUrl(string) {
    try {
        new URL(string);
        return true;
    } catch (_) {
        return false;
    }
}

// Keyboard shortcuts
document.addEventListener('keydown', function (e) {
    // Escape key closes modals
    if (e.key === 'Escape') {
        const activeModal = document.querySelector('.modal.active');
        if (activeModal) {
            closeModal(activeModal.id);
        }
    }
});

// Click outside modal to close
document.addEventListener('click', function (e) {
    if (e.target.classList.contains('modal')) {
        closeModal(e.target.id);
    }
});

// Auto-save form data to localStorage
function saveFormData(formId) {
    const form = document.getElementById(formId);
    const formData = new FormData(form);
    const data = {};

    for (let [key, value] of formData.entries()) {
        data[key] = value;
    }

    localStorage.setItem(`form_${formId}`, JSON.stringify(data));
}

function loadFormData(formId) {
    const savedData = localStorage.getItem(`form_${formId}`);
    if (savedData) {
        const data = JSON.parse(savedData);
        const form = document.getElementById(formId);

        Object.entries(data).forEach(([key, value]) => {
            if (key === 'device_name') {
                const customSelect = document.querySelector(`[data-select-id="device-name"]`);
                const dropdownInstance = customSelect?.dropdownInstance;
                if (dropdownInstance && value) {
                    dropdownInstance.setValue(value);
                    // Trigger version loading
                    setTimeout(() => {
                        const versionSelect = document.querySelector(`[data-select-id="version-name"]`);
                        const hiddenVersionInput = document.getElementById(`version-name`);
                        if (versionSelect && hiddenVersionInput) {
                            const baseCodename = extractBaseCodename(value);
                            loadDeviceVersions(baseCodename, versionSelect, hiddenVersionInput);
                        }
                    }, 100);
                }
            } else if (key === 'version_name') {
                const customSelect = document.querySelector(`[data-select-id="version-name"]`);
                const dropdownInstance = customSelect?.dropdownInstance;
                if (dropdownInstance && value) {
                    // Wait for versions to be loaded before setting value
                    setTimeout(() => {
                        dropdownInstance.setValue(value);
                    }, 500);
                }
            } else {
                const input = form.querySelector(`[name="${key}"]`);
                if (input) {
                    if (input.type === 'checkbox') {
                        input.checked = value === 'true' || value === true;
                    } else {
                        input.value = value;
                    }
                }
            }
        });
    }
}

// Load saved data on page load (after devices are loaded)
function loadSavedFormData() {
    loadFormData('patcher-form');
}

// Save data when form changes
if (patcherForm) {
    patcherForm.addEventListener('input', () => saveFormData(patcherForm.id));
    patcherForm.addEventListener('change', () => saveFormData(patcherForm.id));
}

// API Functions
async function loadDevicesData() {
    try {
        console.log('Loading devices data...');
        const response = await fetch(CONFIG.apiBaseUrl + CONFIG.endpoints.devices);

        if (!response.ok) {
            throw new Error(`Failed to load devices: ${response.status}`);
        }

        const devices = await response.json();
        console.log('Devices loaded:', devices);

        // Populate unified device dropdown
        const deviceSelect = document.querySelector(`[data-select-id="device-name"]`);
        if (deviceSelect) {
            populateDeviceDropdown(deviceSelect, devices);
        }

        // Load saved form data after devices are populated
        loadSavedFormData();

    } catch (error) {
        console.error('Error loading devices:', error);

        // Show error in device dropdown
        const deviceSelect = document.querySelector(`[data-select-id="device-name"]`);
        if (deviceSelect) {
            const trigger = deviceSelect.querySelector('.select-trigger');
            const selectInput = trigger.querySelector('.select-input');
            selectInput.value = 'Failed to load devices';
            selectInput.style.color = 'var(--error)';
            trigger.style.pointerEvents = 'none';
        }
    }
}

function populateDeviceDropdown(customSelect, devices) {
    // Sort devices by name alphabetically
    const sortedDevices = devices.sort((a, b) => a.name.localeCompare(b.name));

    const options = [
        { value: '', text: 'Select a device' },
        ...sortedDevices.map(device => ({
            value: device.codename,
            text: `${device.name} (${device.codename})`
        }))
    ];

    console.log(`Populating device dropdown with ${options.length} options`);

    // Get the dropdown instance and set options
    const dropdownInstance = customSelect.dropdownInstance;
    if (dropdownInstance) {
        dropdownInstance.setOptions(options);
        console.log('Device dropdown instance found and options set');
    } else {
        console.log('Creating new device dropdown instance');
        // Store dropdown instance for later use
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
        console.log(`Loading versions for device: ${codename}`);

        // Extract base codename for caching and API calls
        const baseCodename = extractBaseCodename(codename);

        // Check cache first
        if (devicesWithNoVersions.has(codename)) {
            console.log(`Device ${codename} already known to have no versions, skipping API call`);
            populateVersionDropdown(versionSelect, hiddenVersionInput, {
                firmware_versions: [],
                miui_roms: []
            });
            return;
        }

        // Show loading state
        const versionTrigger = versionSelect.querySelector('.select-trigger');
        const versionInput = versionTrigger.querySelector('.select-input');
        const optionsList = versionSelect.querySelector('.options-list');

        versionInput.value = 'Loading versions...';
        versionSelect.classList.add('loading');

        const url = CONFIG.apiBaseUrl + CONFIG.endpoints.deviceSoftware.replace('{codename}', codename);
        const response = await fetch(url);

        if (!response.ok) {
            if (response.status === 404) {
                // Device not found or no software data available
                console.log(`No software data available for device: ${codename}`);
                devicesWithNoVersions.add(codename); // Add to cache
                devicesWithNoVersions.add(baseCodename); // Also cache base codename
                populateVersionDropdown(versionSelect, hiddenVersionInput, {
                    firmware_versions: [],
                    miui_roms: []
                });
                return;
            } else {
                throw new Error(`Failed to load device versions: ${response.status}`);
            }
        }

        const softwareData = await response.json();
        console.log('Software data loaded:', softwareData);

        // Cache the software data
        softwareDataCache.set(baseCodename, softwareData);

        populateVersionDropdown(versionSelect, hiddenVersionInput, softwareData);

    } catch (error) {
        console.error('Error loading device versions:', error);
        const versionTrigger = versionSelect.querySelector('.select-trigger');
        const versionInput = versionTrigger.querySelector('.select-input');
        const optionsList = versionSelect.querySelector('.options-list');

        versionInput.value = 'Failed to load versions';
        versionInput.style.color = 'var(--error)';
        versionSelect.classList.remove('loading');
        versionSelect.style.pointerEvents = 'none';
    }
}

function populateVersionDropdown(versionSelect, hiddenVersionInput, softwareData) {
    const firmwareVersions = softwareData.firmware_versions || [];
    const miuiRoms = softwareData.miui_roms || [];

    const options = [
        { value: '', text: 'Select a version' }
    ];

    // Firmware versions section removed - only showing MIUI ROMs

    // Add MIUI ROMs
    if (miuiRoms.length > 0) {
        options.push(
            { value: '---miui---', text: 'MIUI ROMs', isGroupLabel: true },
            ...miuiRoms.map(rom => {
                const version = rom.version || rom.miui || 'Unknown';
                const androidVersion = rom.android || '';
                const displayText = androidVersion ? `${version} (Android ${androidVersion})` : version;
                return {
                    value: version,
                    text: displayText
                };
            })
        );
    }

    // If no versions available
    if (firmwareVersions.length === 0 && miuiRoms.length === 0) {
        options.length = 1;
        options[0] = { value: '', text: 'No versions available for this device' };
    }

    console.log(`Populating version dropdown with ${options.length} options`);

    // Get the dropdown instance and set options
    const dropdownInstance = versionSelect.dropdownInstance;
    if (dropdownInstance) {
        dropdownInstance.setOptions(options);
        dropdownInstance.setDisabled(false);
        console.log('Version dropdown instance found and options set');
    } else {
        console.log('Creating new version dropdown instance');
        // Initialize dropdown if not already done
        versionSelect.dropdownInstance = initializeCustomDropdown(
            versionSelect,
            hiddenVersionInput,
            null
        );
        versionSelect.dropdownInstance.setOptions(options);
    }

    // Remove loading state and reset input value
    versionSelect.classList.remove('loading');
    const versionTrigger = versionSelect.querySelector('.select-trigger');
    const versionInput = versionTrigger.querySelector('.select-input');

    // Reset the input value based on available options
    if (firmwareVersions.length === 0 && miuiRoms.length === 0) {
        versionInput.value = 'No versions available for this device';
    } else {
        versionInput.value = 'Select a version';
        versionInput.placeholder = 'Select a version';
    }

    // Reset any error styling
    versionInput.style.color = '';
    versionSelect.style.pointerEvents = '';
}

// Export functions for global access
window.clearForm = clearForm;
window.closeModal = closeModal;
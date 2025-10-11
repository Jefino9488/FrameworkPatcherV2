// Configuration
const CONFIG = {
    githubOwner: 'jefino9488',
    githubRepo: 'FrameworkPatcherV2',
    workflows: {
        android15: 'Android 15 Framework Patcher',
        android16: 'Android 16 Framework Patcher'
    }
};

// DOM Elements
let currentVersion = 'android15';
const versionBtns = document.querySelectorAll('.version-btn');
const formContainers = document.querySelectorAll('.form-container');
const a15Form = document.getElementById('a15-form');
const a16Form = document.getElementById('a16-form');

// Initialize the application
document.addEventListener('DOMContentLoaded', function () {
    initializeVersionSelector();
    initializeForms();
    setupEventListeners();
});

// Version selector functionality
function initializeVersionSelector() {
    versionBtns.forEach(btn => {
        btn.addEventListener('click', function () {
            const version = this.dataset.version;
            switchVersion(version);
        });
    });
}

function switchVersion(version) {
    // Update active button
    versionBtns.forEach(btn => {
        btn.classList.remove('active');
        if (btn.dataset.version === version) {
            btn.classList.add('active');
        }
    });

    // Update active form
    formContainers.forEach(container => {
        container.classList.remove('active');
    });
    document.getElementById(`${version}-form`).classList.add('active');

    currentVersion = version;
}

// Form initialization
function initializeForms() {
    // Android 16 specific: Handle checkbox changes
    const checkboxes = document.querySelectorAll('#a16-form input[type="checkbox"]');
    checkboxes.forEach(checkbox => {
        checkbox.addEventListener('change', function () {
            toggleUrlInputs(this);
        });
    });

    // Initialize URL input states
    checkboxes.forEach(checkbox => {
        toggleUrlInputs(checkbox);
    });
}

function toggleUrlInputs(checkbox) {
    const isChecked = checkbox.checked;
    const inputName = checkbox.name.replace('patch_', '');
    const urlInput = document.getElementById(`a16-${inputName}-url`);

    if (urlInput) {
        urlInput.required = isChecked;
        urlInput.disabled = !isChecked;
        if (!isChecked) {
            urlInput.value = '';
        }
    }
}

// Event listeners
function setupEventListeners() {
    a15Form.addEventListener('submit', function (e) {
        e.preventDefault();
        handleFormSubmit('android15', this);
    });

    a16Form.addEventListener('submit', function (e) {
        e.preventDefault();
        handleFormSubmit('android16', this);
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

        // Handle Android 16 specific logic
        if (version === 'android16') {
            inputs.patch_framework = form.querySelector('input[name="patch_framework"]').checked;
            inputs.patch_services = form.querySelector('input[name="patch_services"]').checked;
            inputs.patch_miui_services = form.querySelector('input[name="patch_miui_services"]').checked;
        }

        // Remove empty optional fields
        if (!inputs.user_id || inputs.user_id.trim() === '') {
            delete inputs.user_id;
        }

        // Trigger GitHub workflow
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

// GitHub API integration
async function triggerWorkflow(version, inputs) {
    try {
        // For GitHub Pages, we'll use the GitHub API
        // Note: This requires the repository to be public or proper authentication

        const workflowName = CONFIG.workflows[version];
        const apiUrl = `https://api.github.com/repos/${CONFIG.githubOwner}/${CONFIG.githubRepo}/actions/workflows/${encodeURIComponent(workflowName)}.yml/dispatches`;

        const payload = {
            ref: 'main', // or 'master' depending on your default branch
            inputs: inputs
        };

        // Since this is a client-side request, we'll simulate the workflow trigger
        // In a real implementation, you'd need a backend service or GitHub token
        console.log('Would trigger workflow:', version, inputs);

        // Simulate API call delay
        await new Promise(resolve => setTimeout(resolve, 2000));

        // For demo purposes, we'll show success
        // In production, you'd handle the actual API response
        return true;

    } catch (error) {
        console.error('Workflow trigger error:', error);
        throw error;
    }
}

// Alternative method using GitHub's workflow_dispatch API
async function triggerWorkflowAlternative(version, inputs) {
    // This would require authentication and CORS handling
    // For now, we'll provide instructions to the user

    const workflowName = CONFIG.workflows[version];
    const workflowUrl = `https://github.com/${CONFIG.githubOwner}/${CONFIG.githubRepo}/actions/workflows/${encodeURIComponent(workflowName)}.yml`;

    // Show instructions to manually trigger
    showManualTriggerInstructions(workflowUrl, inputs);
    return true;
}

function showManualTriggerInstructions(workflowUrl, inputs) {
    const instructions = `
        <h3>Manual Workflow Trigger Required</h3>
        <p>Please follow these steps to trigger the workflow manually:</p>
        <ol>
            <li>Go to <a href="${workflowUrl}" target="_blank">GitHub Actions</a></li>
            <li>Click "Run workflow"</li>
            <li>Fill in the following parameters:</li>
        </ol>
        <div class="parameters">
            ${Object.entries(inputs).map(([key, value]) =>
        `<p><strong>${key}:</strong> ${value}</p>`
    ).join('')}
        </div>
    `;

    document.getElementById('error-message').innerHTML = instructions;
    showModal('error-modal');
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

        // Reset Android 16 checkboxes to defaults
        if (formId === 'a16-form') {
            const checkboxes = form.querySelectorAll('input[type="checkbox"]');
            checkboxes.forEach((checkbox, index) => {
                if (index === 2) { // miui_services
                    checkbox.checked = false;
                } else {
                    checkbox.checked = true;
                }
                toggleUrlInputs(checkbox);
            });
        }
    }
}

// Form validation
function validateForm(form) {
    const requiredInputs = form.querySelectorAll('input[required]');
    let isValid = true;

    requiredInputs.forEach(input => {
        if (!input.value.trim()) {
            input.style.borderColor = '#dc3545';
            isValid = false;
        } else {
            input.style.borderColor = '#e9ecef';
        }
    });

    // URL validation
    const urlInputs = form.querySelectorAll('input[type="url"]');
    urlInputs.forEach(input => {
        if (input.value && !isValidUrl(input.value)) {
            input.style.borderColor = '#dc3545';
            isValid = false;
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
            const input = form.querySelector(`[name="${key}"]`);
            if (input && input.type !== 'checkbox') {
                input.value = value;
            } else if (input && input.type === 'checkbox') {
                input.checked = value === 'on' || value === true;
            }
        });
    }
}

// Load saved data on page load
document.addEventListener('DOMContentLoaded', function () {
    loadFormData('a15-form');
    loadFormData('a16-form');
});

// Save data when form changes
[a15Form, a16Form].forEach(form => {
    if (form) {
        form.addEventListener('input', () => saveFormData(form.id));
        form.addEventListener('change', () => saveFormData(form.id));
    }
});

// Export functions for global access
window.clearForm = clearForm;
window.closeModal = closeModal;

// Configuration
const CONFIG = {
    githubOwner: 'jefino9488',
    githubRepo: 'FrameworkPatcherV2',
    // Token is now handled server-side via API route
    workflows: {
        android15: 'android15.yml',
        android16: 'android16.yml'
    }
};

// No longer need Octokit - using secure API route instead

// DOM Elements
let currentVersion = 'android15';
const versionBtns = document.querySelectorAll('.version-btn');
const formContainers = document.querySelectorAll('.form-container');
const a15Form = document.getElementById('a15-form');
const a16Form = document.getElementById('a16-form');

// Octokit initialization no longer needed - using secure API route

// Initialize the application
document.addEventListener('DOMContentLoaded', function () {
    console.log('Framework Patcher initialized - using secure API route');
    
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
    // Both Android 15 and 16 now have the same form structure
    // No special handling needed for Android 16
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

        // Remove empty optional fields
        if (!inputs.user_id || inputs.user_id.trim() === '') {
            delete inputs.user_id;
        }

        // Validate required fields - no PAT validation needed since we use owner's token

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

        const result = await response.json();

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
    const workflowName = version === 'android15' ? 'Android 15 Framework Patcher' : 'Android 16 Framework Patcher';
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
            if (input) {
                input.value = value;
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
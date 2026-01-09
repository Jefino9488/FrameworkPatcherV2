// services/web/modules/api.js
import {CONFIG} from './config.js';

export async function fetchDevices() {
    try {
        const response = await fetch(CONFIG.apiBaseUrl + CONFIG.endpoints.devices);
        if (!response.ok) throw new Error(`Failed to load devices`);
        return await response.json();
    } catch (error) {
        console.error('Error loading devices:', error);
        throw error;
    }
}

export async function fetchDeviceSoftware(codename) {
    try {
        const url = CONFIG.apiBaseUrl + CONFIG.endpoints.deviceSoftware.replace('{codename}', codename);
        const response = await fetch(url);

        if (!response.ok) {
            if (response.status === 404) {
                return {firmware_versions: [], miui_roms: []}; // Return empty if not found
            }
            throw new Error('Failed to load versions');
        }

        return await response.json();
    } catch (error) {
        console.error('Error loading versions:', error);
        throw error;
    }
}

export async function triggerWorkflow(version, inputs) {
    try {
        const response = await fetch(CONFIG.apiBaseUrl + '/trigger-workflow', {
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
        throw error;
    }
}

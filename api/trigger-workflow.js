import {Octokit} from '@octokit/core';

export default async function handler(req, res) {
    // Enable CORS for your domain
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'POST, OPTIONS');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type');

    // Handle preflight requests
    if (req.method === 'OPTIONS') {
        return res.status(200).end();
    }

    // Only allow POST requests
    if (req.method !== 'POST') {
        return res.status(405).json({error: 'Method not allowed'});
    }

    try {
        console.log('API called with method:', req.method);
        console.log('Request body:', req.body);

        // Check if GitHub token is available
        if (!process.env.GITHUB_TOKEN) {
            console.error('GITHUB_TOKEN environment variable not set');
            return res.status(500).json({error: 'Server configuration error: GITHUB_TOKEN not set'});
        }

        const {version, inputs} = req.body;

        // Validate required fields
        if (!version || !inputs) {
            console.error('Missing required fields:', {version, inputs});
            return res.status(400).json({error: 'Missing required fields: version and inputs'});
        }

        // Validate inputs
        const requiredFields = ['api_level', 'device_name', 'version_name', 'framework_url', 'services_url', 'miui_services_url'];
        for (const field of requiredFields) {
            if (!inputs[field]) {
                return res.status(400).json({error: `Missing required field: ${field}`});
            }
        }

        // Initialize Octokit with your PAT from environment variable
        const octokit = new Octokit({
            auth: process.env.GITHUB_TOKEN, // This will be your PAT from Vercel environment variables
        });

        // Determine workflow file based on version
        const workflowFile = version === 'android15' ? 'android15.yml' : 'android16.yml';

        // Prepare workflow inputs
        const workflowInputs = {
            api_level: inputs.api_level,
            device_name: inputs.device_name,
            version_name: inputs.version_name,
            framework_url: inputs.framework_url,
            services_url: inputs.services_url,
            miui_services_url: inputs.miui_services_url,
        };

        // Add optional user_id if provided
        if (inputs.user_id) {
            workflowInputs.user_id = inputs.user_id;
        }

        console.log('Triggering workflow:', workflowFile, workflowInputs);

        // Trigger the workflow
        const response = await octokit.request('POST /repos/{owner}/{repo}/actions/workflows/{workflow_id}/dispatches', {
            owner: 'jefino9488',
            repo: 'FrameworkPatcherV2',
            workflow_id: workflowFile,
            ref: 'master',
            inputs: workflowInputs,
        });

        if (response.status === 204) {
            console.log('Workflow triggered successfully');
            return res.status(200).json({
                success: true,
                message: 'Workflow triggered successfully',
                workflow: workflowFile,
                inputs: workflowInputs
            });
        } else {
            console.error('Error triggering GitHub Action:', response.status);
            return res.status(500).json({
                error: 'Failed to trigger workflow',
                status: response.status
            });
        }

    } catch (error) {
        console.error('API Error:', error);

        // Handle specific GitHub API errors
        if (error.status === 401) {
            return res.status(401).json({error: 'Invalid GitHub token. Please check your environment variables.'});
        } else if (error.status === 403) {
            return res.status(403).json({error: 'Access denied. Check token permissions.'});
        } else if (error.status === 404) {
            return res.status(404).json({error: 'Workflow not found. Please check the workflow file exists.'});
        }

        return res.status(500).json({
            error: 'Internal server error',
            details: error.message
        });
    }
}

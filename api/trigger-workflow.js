// API route: /api/trigger-workflow
// This handles GitHub workflow triggering securely using environment variables

export default async function handler(req, res) {
    // Only allow POST requests
    if (req.method !== 'POST') {
        return res.status(405).json({ error: 'Method not allowed' });
    }

    try {
        const { version, inputs } = req.body;

        // Validate required fields
        if (!version || !inputs) {
            return res.status(400).json({ error: 'Missing required fields: version and inputs' });
        }

        // Get GitHub token from environment variables
        const githubToken = process.env.GITHUB_TOKEN;
        if (!githubToken) {
            console.error('GITHUB_TOKEN environment variable not set');
            return res.status(500).json({ error: 'Server configuration error' });
        }

        // Validate workflow version
        const validVersions = ['android15', 'android16'];
        if (!validVersions.includes(version)) {
            return res.status(400).json({ error: 'Invalid version. Must be android15 or android16' });
        }

        // Map version to workflow file
        const workflowFiles = {
            android15: 'android15.yml',
            android16: 'android16.yml'
        };

        const workflowFile = workflowFiles[version];
        const owner = 'jefino9488';
        const repo = 'FrameworkPatcherV2';

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

        console.log(`Triggering ${workflowFile} workflow for ${inputs.device_name}`);

        // Trigger GitHub workflow using fetch
        const response = await fetch(
            `https://api.github.com/repos/${owner}/${repo}/actions/workflows/${workflowFile}/dispatches`,
            {
                method: 'POST',
                headers: {
                    'Authorization': `token ${githubToken}`,
                    'Accept': 'application/vnd.github.v3+json',
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    ref: 'master',
                    inputs: workflowInputs,
                }),
            }
        );

        if (response.status === 204) {
            console.log('Workflow triggered successfully');
            return res.status(200).json({ 
                success: true, 
                message: 'Workflow triggered successfully',
                workflowUrl: `https://github.com/${owner}/${repo}/actions/workflows/${workflowFile}`
            });
        } else {
            const errorText = await response.text();
            console.error('GitHub API error:', response.status, errorText);
            
            // Handle specific GitHub API errors
            if (response.status === 401) {
                return res.status(401).json({ error: 'Invalid GitHub token' });
            } else if (response.status === 403) {
                return res.status(403).json({ error: 'Access denied. Token lacks required permissions' });
            } else if (response.status === 404) {
                return res.status(404).json({ error: 'Workflow not found' });
            } else {
                return res.status(response.status).json({ 
                    error: `GitHub API error: ${response.status}`,
                    details: errorText
                });
            }
        }

    } catch (error) {
        console.error('API route error:', error);
        return res.status(500).json({ 
            error: 'Internal server error',
            details: error.message 
        });
    }
}

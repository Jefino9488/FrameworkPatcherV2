// services/web/modules/config.js
export const CONFIG = {
    githubOwner: 'jefino9488',
    githubRepo: 'FrameworkPatcherV2',
    workflows: {
        android13: 'android13.yml',
        android14: 'android14.yml',
        android15: 'android15.yml',
        android16: 'android16.yml'
    },
    // API endpoints
    apiBaseUrl: 'http://20.193.137.189:8000',
    endpoints: {
        devices: '/devices',
        deviceSoftware: '/devices/{codename}/software'
    }
};

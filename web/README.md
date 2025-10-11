# Framework Patcher Website

This is a GitHub Pages website that provides a user-friendly interface for triggering Android framework patching
workflows.

## Features

- **Dual Version Support**: Separate interfaces for Android 15 and Android 16
- **Dynamic Form Validation**: Real-time validation of input fields
- **Responsive Design**: Works on desktop and mobile devices
- **Auto-save**: Form data is automatically saved to browser localStorage
- **Modern UI**: Clean, professional interface with smooth animations

## How to Use

### For Android 15:

1. Select "Android 15" tab
2. Fill in the required fields:
    - **API Level**: Default is 35 for Android 15
    - **Device Codename**: Your device's codename (e.g., rothko)
    - **Version Name**: MIUI/ROM version (e.g., OS2.0.200.33)
    - **Telegram User ID**: Optional, for notifications
3. Provide URLs for the three JAR files:
    - Framework.jar URL
    - Services.jar URL
    - MIUI Services.jar URL
4. Click "Start Patching"

### For Android 16:

1. Select "Android 16" tab
2. Fill in the required fields:
    - **API Level**: Default is 36 for Android 16
    - **Device Codename**: Your device's codename
    - **Version Name**: ROM/firmware version
    - **Telegram User ID**: Optional, for notifications
3. Choose which JARs to patch:
    - ✅ Patch framework.jar (default)
    - ✅ Patch services.jar (default)
    - ⬜ Patch miui-services.jar (optional)
4. Provide URLs only for the JARs you want to patch
5. Click "Start Patching"

## Deployment

This website is automatically deployed to GitHub Pages when changes are pushed to the `main` branch in the `docs/`
folder.

### Manual Deployment

1. Push changes to the `docs/` folder
2. The GitHub Actions workflow will automatically deploy to Pages
3. The site will be available at: `https://jefino9488.github.io/FrameworkPatcherV2/`

## Technical Details

### Files Structure

```
docs/
├── index.html          # Main HTML page
├── styles.css          # CSS styling
├── script.js           # JavaScript functionality
└── README.md           # This file
```

### Key Features

- **Version Switching**: Toggle between Android 15 and 16 interfaces
- **Form Validation**: Client-side validation for required fields and URL formats
- **Responsive Design**: Mobile-first approach with breakpoints
- **Modal Dialogs**: Loading, success, and error states
- **Local Storage**: Auto-save form data for user convenience

### Browser Compatibility

- Chrome 60+
- Firefox 55+
- Safari 12+
- Edge 79+

## Development

To modify the website:

1. Edit the files in the `docs/` folder
2. Test locally by opening `index.html` in a browser
3. Commit and push changes to trigger deployment

### Local Testing

```bash
# Simple HTTP server for local testing
python3 -m http.server 8000
# or
npx serve web
```

## Workflow Integration

The website is designed to work with the GitHub Actions workflows:

- `android15.yml` - Android 15 Framework Patcher
- `android16.yml` - Android 16 Framework Patcher

Both workflows now have optional `user_id` parameters for Telegram notifications.

## Support

For issues or questions:

- GitHub Issues: [FrameworkPatcherV2 Issues](https://github.com/jefino9488/FrameworkPatcherV2/issues)
- Support: [Buy Me a Coffee](https://buymeacoffee.com/jefino)

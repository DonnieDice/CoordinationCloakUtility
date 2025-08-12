# GitHub Repository Secrets Configuration

To enable the automated release workflow with Discord notifications and addon hosting uploads, you need to configure the following secrets in your GitHub repository:

## Required Secrets

Navigate to your repository on GitHub → Settings → Secrets and variables → Actions → New repository secret

### 1. **DISCORD_WEBHOOK**
- **Value**: `https://discord.com/api/webhooks/1404939800921899048/rZZbVLou6M4kqNuCIwYPcNDK9W_qRC5duF-xXgBgmSxf5TU--sYfOEO14LOLDB3g1_JJ`
- **Description**: Discord webhook URL for release notifications

### 2. **CF_API_KEY**
- **Value**: `04a7e7a6-6497-41d9-b6cc-88381a63d2a9`
- **Description**: CurseForge API key for addon uploads

### 3. **WOWI_API_TOKEN**
- **Value**: `8a5f86a9e264e5c7d7d16de82217ac37d6aa185bd4c622199ebf05fc4f5732a6`
- **Description**: WoWInterface API token for addon uploads

### 4. **WAGO_API_TOKEN**
- **Value**: `NKK3BKHeIlxVQqTjFByTwohzHSL4nGH66o2Dvriu`
- **Description**: Wago.io API token for addon uploads

## How to Add Secrets

1. Go to https://github.com/DonnieDice/CoordinationCloakUtility/settings/secrets/actions
2. Click "New repository secret"
3. Enter the secret name (e.g., `DISCORD_WEBHOOK`)
4. Enter the secret value
5. Click "Add secret"
6. Repeat for all required secrets

## Security Note

⚠️ **IMPORTANT**: Never commit these values directly to your repository. Always use GitHub Secrets to store sensitive information.

## Workflow Features

Once configured, the workflow will:
- Automatically package and release your addon when you push a tag
- Send Discord notifications for:
  - ✅ Successful releases
  - 🔧 Beta builds
  - 🧪 Alpha builds
  - ❌ Failed builds
- Upload to CurseForge, WoWInterface, and Wago.io
- Include version information, download links, and changelog in notifications
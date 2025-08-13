# Discord Integration & Webhook Configuration

## RGX Mods Discord Webhook Standard

This document consolidates Discord webhook configuration and formatting standards used across all DonnieDice/RGX Mods addon repositories.

## Webhook Configuration

**Important**: Each addon has its own unique Discord webhook URL that is embedded directly in the workflow files, NOT stored as a GitHub secret.

### Addon-Specific Discord Webhooks

| Addon | Webhook URL | Status |
|-------|-------------|--------|
| **CCU** | `https://discord.com/api/webhooks/1404939800921899048/rZZbVLou6M4kqNuCIwYPcNDK9W_qRC5duF-xXgBgmSxf5TU--sYfOEO14LOLDB3g1_JJ` | ✅ Found in workflow |
| **BLU Classic** | `https://discord.com/api/webhooks/1404619741997563965/W99EcO9tGg1b9hz7rHYyHRJfsL1oeN1vOt0MMMOlsra5oGUDzbviiyILbKwnpxCvYZyJ` | ✅ Found in .env |
| **SRLU** | `https://discord.com/api/webhooks/1402510054506369154/4JFpuLjAej8RVI9VfiwdfJvR6wLptJsTiJ0UZ2ePGyZ7lDh0AOcVHTfuxZoC0e2JukJ8` | ✅ Found in docs |
| **FFLU** | *Need to retrieve from Discord* | ❌ Using GitHub Secret |
| **SQP** | *Need to retrieve from Discord* | ❌ Using GitHub Secret |
| **BLU** | *Need to retrieve from Discord* | ❌ Using GitHub Secret |
| **RND** | *Need to retrieve from Discord* | ❌ Using GitHub Secret |

**Action Required**: 
1. Retrieve missing webhook URLs from Discord server webhook settings
2. Add them to this documentation for local reference
3. Consider whether to hardcode them in workflows or keep as secrets

## Standard Notification Format

All RGX Mods addons use the following Discord embed format:

### Release Notification Structure
```json
{
  "username": "[ADDON_NAME] Update",
  "avatar_url": "[ADDON_ICON_URL]",
  "embeds": [{
    "title": "[EMOJI] [ADDON_NAME] - [VERSION]",
    "description": "[TAGLINE] A new version has been released!\n\n[WHATS_NEW]",
    "url": "[GITHUB_RELEASE_URL]",
    "color": [COLOR_CODE],
    "thumbnail": {
      "url": "[ADDON_ICON_URL]"
    },
    "fields": [
      {
        "name": "📥 Downloads",
        "value": "[PLATFORM_LINKS]",
        "inline": true
      },
      {
        "name": "🎮 Compatibility",
        "value": "[WOW_VERSIONS]",
        "inline": true
      },
      {
        "name": "💬 Support",
        "value": "[SUPPORT_LINKS]",
        "inline": true
      }
    ],
    "footer": {
      "text": "RGX Mods - RealmGX Community",
      "icon_url": "https://raw.githubusercontent.com/donniedice/SimpleQuestPlates/main/images/kiwi.gif"
    },
    "timestamp": "[ISO_TIMESTAMP]"
  }]
}
```

## Color Scheme Standards

| Release Type | Color Code | Hex Color | Visual |
|-------------|------------|-----------|---------|
| Release | `9830721` or `16768000` | #95FF41 or #FFD700 | 🟢 Green/Gold |
| Beta | `16744448` | #FF9100 | 🟠 Orange |
| Alpha | `16711680` | #FF0000 | 🔴 Red |
| Failure | `15158332` | #E74C3C | 🔴 Dark Red |

## Emoji Standards

| Release Type | Emoji | Usage |
|-------------|-------|--------|
| Release | 🎉 or 🚀 | Production releases |
| Beta | 🧪 | Beta/testing builds |
| Alpha | 🔬 | Development builds |
| Failure | ❌ | Build failures |

## Addon-Specific Configurations

### CCU (Coordination Cloak Utility)
- **Webhook**: Hardcoded in workflow - see table above
- **Icon**: `https://raw.githubusercontent.com/DonnieDice/CoordinationCloakUtility/main/images/icon.png`
- **Tagline**: "Teleport with ease!"
- **Color**: `9830721` (Teal)
- **Emoji**: 🎉 (release), 🧪 (beta), 🔬 (alpha)
- **CurseForge**: `https://www.curseforge.com/wow/addons/ccu-coordination-cloak-utility`

### BLU Classic (Better Level-Up! Classic)
- **Webhook**: Found in .env file - see table above
- **Icon**: `https://raw.githubusercontent.com/donniedice/BLU_Classic/main/images/BLU_Logo.png`
- **Tagline**: "Level up in style - Classic Edition!"
- **Color**: `5814783` (Blue)
- **Emoji**: 🎮 (release), 🧪 (beta), 🔬 (alpha)
- **CurseForge**: `https://www.curseforge.com/wow/addons/blu-classic`
- **Discord**: discord.gg/N7kdKAHVVF

### SRLU (Skyrim Level-Up!)
- **Webhook**: Found in README.md - see table above
- **Icon**: `https://raw.githubusercontent.com/donniedice/SRLU/main/images/SRLU_logo_400x400.png`
- **Tagline**: "Fus Ro DAH!"
- **Title Format**: "🗡️ SRLU | Skyrim Level-Up!"
- **Color**: `9132843` (Purple/Blue)
- **CurseForge**: `https://www.curseforge.com/wow/addons/srlu`
- **Discord**: discord.gg/hK9N3esnce

### FFLU (Final Fantasy Level-Up!)
- **Webhook**: Uses GitHub Secret (not found in files)
- **Icon**: `https://raw.githubusercontent.com/donniedice/FFLU/main/images/fflu_logo.png`
- **Tagline**: "Experience the victory fanfare!"
- **Color**: `16766720` (Gold/Yellow)
- **Emoji**: 🎵 (music note theme)
- **CurseForge**: `https://www.curseforge.com/wow/addons/fflu`
- **Discord**: discord.gg/N7kdKAHVVF

### SQP (Simple Quest Plates)
- **Webhook**: Uses GitHub Secret (not found in files)
- **Icon**: `https://raw.githubusercontent.com/donniedice/SimpleQuestPlates/main/images/icon.png`
- **Tagline**: "Clean. Simple. Effective."
- **Title Format**: "🎯 SimpleQuestPlates"
- **Color**: `5168588` (Teal)
- **CurseForge**: `https://www.curseforge.com/wow/addons/simple-quest-plates`
- **Discord**: discord.gg/N7kdKAHVVF

### RND (Remove Nameplate Debuffs)
- **Webhook**: Uses `${{ secrets.DISCORD_WEBHOOK }}`
- **Icon**: `https://raw.githubusercontent.com/donniedice/remove_nameplate_debuffs/main/images/icon.png`
- **Tagline**: "Clean Nameplates, Clear Focus!"
- **Title Format**: "🛡️ RND | Remove Nameplate Debuffs"
- **Color**: `16744448` (Orange) / `10699549` (deploy workflow)
- **CurseForge**: `https://www.curseforge.com/wow/addons/remove-nameplate-debuffs`
- **Discord**: discord.gg/hK9N3esnce

## Platform Links

Standard download platforms for all addons:
- **CurseForge**: `https://www.curseforge.com/wow/addons/[addon-slug]`
- **Wago.io**: `https://addons.wago.io/addons/[addon-slug]`
- **WoWInterface**: `https://www.wowinterface.com/downloads/[addon-page]`
- **GitHub**: `https://github.com/DonnieDice/[repository-name]`

## API Keys & Tokens

These are stored as GitHub Secrets (Settings → Secrets and variables → Actions):

| Secret Name | Description | Required |
|------------|-------------|----------|
| `CF_API_KEY` | CurseForge API key | ✅ Yes |
| `WOWI_API_TOKEN` | WoWInterface API token | Optional |
| `WAGO_API_TOKEN` | Wago.io API token | Optional |
| `GITHUB_TOKEN` | Automatically provided by GitHub | ✅ Yes |

**Note**: The Discord webhook URL is NOT a secret - it's embedded directly in the workflow file.

## Workflow Implementation

### GitHub Actions Setup
1. Create `.github/workflows/release.yml`
2. Use `BigWigsMods/packager@master` for addon packaging
3. Trigger on tag pushes: `tags: ['**']`
4. Include Discord notifications for each release type

### Example Workflow Snippet
```yaml
- name: Send Discord Success Notification
  if: success() && steps.set_release_type.outputs.release_type == 'release'
  run: |
    curl -H "Content-Type: application/json" \
      -X POST \
      -d '{...embed json...}' \
      https://discord.com/api/webhooks/[ADDON_SPECIFIC_WEBHOOK_URL]
```

**Note**: Each addon must use its own webhook URL - do not share webhook URLs between addons.

## Testing Discord Notifications

1. Create a test tag: `git tag v1.0.0-test`
2. Push the tag: `git push origin v1.0.0-test`
3. Monitor Discord channel for notification
4. Delete test tag: `git push --delete origin v1.0.0-test`

## Branding Guidelines

All Discord notifications must include:
- **RGX Mods footer**: "RGX Mods - RealmGX Community"
- **Kiwi gif icon**: Used in footer across all addons
- **Consistent formatting**: Inline fields, thumbnails, timestamps
- **Professional tone**: Clear, concise messaging

## Support & Community

### Discord Servers
- **Primary RGX Community**: [discord.gg/hK9N3esnce](https://discord.gg/hK9N3esnce) (SRLU, RND)
- **Secondary Community**: [discord.gg/N7kdKAHVVF](https://discord.gg/N7kdKAHVVF) (FFLU, SQP, BLU Classic)
- **GitHub Issues**: Report problems on respective repositories
- **Buy Me a Coffee**: [Support DonnieDice](https://www.buymeacoffee.com/donniedice)

## Repository Locations

All addon repositories are located in: `C:\Users\JosephGettings\`
- BLU
- BLU_Classic
- CoordinationCloakUtility
- FFLU
- remove_nameplate_debuffs
- SimpleQuestPlates
- SRLU

---

*This document is maintained for all DonnieDice/RGX Mods addon projects*
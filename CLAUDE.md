# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Coordination Cloak Utility is a World of Warcraft addon that automates teleportation cloak swapping. The addon detects teleportation cloaks in inventory, handles equipping/re-equipping, and provides a UI button for one-click teleportation.

## Important API Keys and Webhooks

**IMPORTANT**: These are embedded directly in the workflow files, NOT as GitHub secrets:

- **Discord Webhook**: `https://discord.com/api/webhooks/1404939800921899048/rZZbVLou6M4kqNuCIwYPcNDK9W_qRC5duF-xXgBgmSxf5TU--sYfOEO14LOLDB3g1_JJ`
- **CurseForge API Key**: `04a7e7a6-6497-41d9-b6cc-88381a63d2a9` (use as secret: CF_API_KEY)
- **WoWInterface Token**: `8a5f86a9e264e5c7d7d16de82217ac37d6aa185bd4c622199ebf05fc4f5732a6` (use as secret: WOWI_API_TOKEN)
- **Wago.io Token**: `NKK3BKHeIlxVQqTjFByTwohzHSL4nGH66o2Dvriu` (use as secret: WAGO_API_TOKEN)

## Core Architecture

### Main Components
- **data/core.lua** - Single Lua file containing all addon logic (~500 lines)
  - Event handling system for WoW API events
  - Secure button implementation for in-game actions
  - Cloak detection and management logic
  - Combat state handling
  - Item info loading and caching

### Key Data Structures
- `CCU` table - Main addon namespace containing all functions and state
- `CCU.cloaks` - Array of teleportation cloak item IDs
- `CCU.usableCloaks` - Table tracking available cloaks in inventory
- Event-driven architecture using WoW's frame event system

## Common Development Tasks

### Testing Changes
- Copy addon files to WoW AddOns directory: `World of Warcraft/_retail_/Interface/AddOns/CoordinationCloakUtility/`
- Use `/reload` in-game to reload UI and test changes
- Test with `/ccu` command to trigger the addon functionality

### Updating for New WoW Patch
1. Find new Interface version number from WoW client or PTR
2. Update `## Interface:` line in CoordinationCloakUtility.toc
3. Test addon functionality on new patch
4. Update version in .toc file following semantic versioning

### Version Release Process
1. Update `## Version:` in CoordinationCloakUtility.toc
2. Update docs/CHANGES.md with changes
3. Commit with descriptive message
4. Tag release: `git tag vX.X.X`
5. Push to GitHub: `git push origin main --tags`
6. GitHub Actions will automatically:
   - Package the addon
   - Upload to CurseForge (project ID: 1086635)
   - Create GitHub release
   - Send Discord notifications

## GitHub Actions Workflow

The `.github/workflows/release.yml` handles automated releases:
- Triggers on version tags (v*)
- Uses BigWigsMods/packager for WoW addon packaging
- Sends Discord notifications for release/beta/alpha builds
- Discord webhook is embedded directly in workflow (NOT as a secret)

## WoW Addon Constraints

- **Combat Restrictions**: Cannot change equipment or modify secure frames during combat
- **Item Info Loading**: Must handle asynchronous item data loading with `GET_ITEM_INFO_RECEIVED` event
- **Secure Actions**: Equipment changes require SecureActionButtonTemplate for user interaction
- **Global Namespace**: Avoid polluting global scope - use addon table pattern

## File Structure

```
CoordinationCloakUtility/
├── CoordinationCloakUtility.toc  # Addon manifest file
├── data/
│   └── core.lua                  # All addon logic
├── images/
│   └── icon.tga                  # Addon icon
└── docs/
    ├── CHANGES.md                 # Version history
    └── changelog.txt              # User-facing changelog
```

## Key Functions

- `CCU:HandleCloakUse()` - Main entry point for cloak swapping logic
- `CCU:EquipAndUseCloak()` - Handles equipping teleportation cloak
- `CCU:ReequipOriginalCloak()` - Restores original cloak after teleport
- `CCU:UpdateUsableCloaks()` - Refreshes inventory cloak availability
- `CCU:HandleBackSlotItem()` - Manages current equipped cloak state

## Supported Teleportation Cloaks

Item IDs defined in `CCU.cloaks`:
- 65274, 65360, 65361 - Cloak of Coordination variants
- 63206, 63207 - Wrap of Unity variants  
- 63352, 63353 - Shroud of Cooperation variants

## Addon Development Standards

This addon follows the same development patterns as other DonnieDice addons (SRLU, FFLU, SQP, BLU Classic):

1. **Discord Notifications**: Webhook URLs are embedded directly in workflow files, not as secrets
2. **Release Automation**: Use BigWigsMods/packager for packaging
3. **Version Format**: Use `vX.X.X` format for tags (e.g., v3.2.0)
4. **Changelog**: Maintain docs/CHANGES.md with version history
5. **TOC Updates**: Always update `## Version:` in .toc file before releasing

## Repository Links

- **GitHub**: https://github.com/DonnieDice/CoordinationCloakUtility
- **CurseForge**: https://www.curseforge.com/wow/addons/ccu-coordination-cloak-utility
- **Author**: DonnieDice (donniedice@protonmail.com)
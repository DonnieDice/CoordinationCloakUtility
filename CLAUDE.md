# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Coordination Cloak Utility is a World of Warcraft addon that automates teleportation cloak swapping. The addon detects teleportation cloaks in inventory, handles equipping/re-equipping, and provides a UI button for one-click teleportation.

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
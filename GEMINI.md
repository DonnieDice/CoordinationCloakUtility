# GEMINI.md

This file provides guidance to the Gemini agent when working with code in this repository.

## Project Overview

Coordination Cloak Utility is a World of Warcraft addon that automates teleportation cloak swapping. The addon detects teleportation cloaks in inventory, handles equipping/re-equipping, and provides a UI button for one-click teleportation.

## Core Architecture

### Main Components
- **data/core.lua** - A single Lua file containing all addon logic.
  - Event handling system for WoW API events.
  - Secure button implementation for in-game actions.
  - Cloak detection and management logic.
  - Combat state handling.
  - Item info loading and caching.

### Key Data Structures
- `CCU` table - The main addon namespace containing all functions and state.
- `CCU.cloaks` - An array of teleportation cloak item IDs.
- `CCU.usableCloaks` - A table tracking available cloaks in the player's inventory.
- The addon uses an event-driven architecture using WoW's frame event system.

## File Structure

```
CoordinationCloakUtility/
├── CoordinationCloakUtility.toc  # Addon manifest file
├── data/
│   └── core.lua                  # All addon logic
├── locales/
│   ├── en.lua                    # English localization
│   ├── es.lua                    # Spanish localization
│   ├── de.lua                    # German localization
│   ├── fr.lua                    # French localization
│   └── localization.lua          # Localization loader
├── images/
│   └── icon.tga                  # Addon icon
└── docs/
    ├── CHANGES.md                # Version history
    └── changelog.txt             # User-facing changelog
```

## Key Functions

- `CCU:HandleCloakUse()` - Main entry point for the cloak swapping logic.
- `CCU:EquipAndUseCloak()` - Handles equipping the teleportation cloak.
- `CCU:ReequipOriginalCloak()` - Restores the original cloak after teleportation.
- `CCU:UpdateUsableCloaks()` - Refreshes the list of available cloaks from the inventory.
- `CCU:HandleBackSlotItem()` - Manages the currently equipped cloak state.

## Localization

Localization is handled via the `locales/` directory.
- `localization.lua` loads the appropriate language file based on the client's locale.
- `en.lua`, `de.lua`, `es.lua`, and `fr.lua` contain the translated strings.
- To add a new language, a new file with the locale name (e.g., `ru.lua`) should be created and added to `CoordinationCloakUtility.toc`.

## Common Development Tasks

### Testing Changes
- Copy the addon files to your WoW AddOns directory: `World of Warcraft/_retail_/Interface/AddOns/CoordinationCloakUtility/`
- Use the `/reload` command in-game to reload the UI and test changes.
- Use the `/ccu` command to trigger the addon's functionality.

### Updating for a New WoW Patch
1. Find the new Interface version number from the WoW client or Public Test Realm (PTR).
2. Update the `## Interface:` line in `CoordinationCloakUtility.toc`.
3. Test the addon functionality on the new patch.
4. Update the `## Version:` in the `.toc` file following semantic versioning.

### Version Release Process
1. Update `## Version:` in `CoordinationCloakUtility.toc`.
2. Update `docs/CHANGES.md` with the changes for the new version.
3. Commit the changes with a descriptive message.
4. Tag the release using `git tag vX.X.X`.
5. Push the changes to GitHub: `git push origin main --tags`.
6. A GitHub Actions workflow will automatically package the addon, upload it to CurseForge, create a GitHub release, and send a Discord notification.

## WoW Addon Constraints

- **Combat Restrictions**: Cannot change equipment or modify secure frames during combat.
- **Item Info Loading**: Must handle asynchronous item data loading with the `GET_ITEM_INFO_RECEIVED` event.
- **Secure Actions**: Equipment changes require a `SecureActionButtonTemplate` for user interaction.
- **Global Namespace**: Avoid polluting the global scope by using an addon table pattern (e.g., the `CCU` table).

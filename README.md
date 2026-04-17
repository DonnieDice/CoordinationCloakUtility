# <img src="media/ccu_logo.png" width="25" height="25"> <span style="color:#8b0941">C</span><span style="color:#8b0941">C</span><span style="color:#8b0941">U</span> <span style="color:#fff">|</span> <span style="color:#8b0941">Coordination Cloak Utility</span>
## <img src="https://raw.githubusercontent.com/donniedice/SimpleQuestPlates/main/images/kiwi.gif" height="20"> <span style="color:#8B1538">R</span><span style="color:#8B1538">G</span><span style="color:#8B1538">X</span> <span style="color:#4ecdc4">Mods</span> <span style="color:#3598db">-</span> [<span style="color:#8B1538">R</span><span style="color:#7598b6">ealm</span><span style="color:#8B1538">G</span><span style="color:#8B1538">X</span>](https://realmgx.com) <span style="color:#8b0941">Community Project</span>

<div align="center">

[![CCU](https://img.shields.io/badge/CCU-Coordination%20Cloak%20Utility-8b0941?style=for-the-badge&logo=github&logoColor=white)](https://github.com/donniedice/CoordinationCloakUtility)
[![RGX Mods](https://img.shields.io/badge/RGX-Mods%20Collection-8B1538?style=for-the-badge&logo=github&logoColor=white)](https://discord.gg/N7kdKAHVVF)

### <span style="color:#8b0941">🪄 </span> <span style="color:#e67e23">*Use `/ccu` for the popup button, or click the movable minimap icon to jump straight into the cloak flow.*</span>

**<span style="color:#8b0941">CCU</span> <span style="color:#e67e23">is a lightweight</span> <span style="color:#06c">World of Warcraft</span> <span style="color:#e67e23">addon that finds your teleportation cloaks, equips the best usable one, gives you a centered use button, and now adds a movable minimap icon for quick teleport access.</span>**

[![GitHub release](https://img.shields.io/github/v/release/donniedice/CoordinationCloakUtility?style=for-the-badge&logo=github&color=success)](https://github.com/donniedice/CoordinationCloakUtility/releases)
[![CurseForge](https://img.shields.io/badge/CurseForge-Downloads-orange?style=flat-square&logo=curseforge)](https://www.curseforge.com/wow/addons/ccu-coordination-cloak-utility)
[![Wago](https://img.shields.io/badge/Wago.io-Downloads-purple?style=flat-square&logo=wago)](https://addons.wago.io/addons/ccu)
[![WoWInterface](https://img.shields.io/badge/WoWInterface-Downloads-blue?style=flat-square&logo=worldofwarcraft)](https://www.wowinterface.com/downloads/info26468)
[![WoW Retail](https://img.shields.io/badge/WoW-Retail%20Midnight-8b0941?style=flat-square&logo=worldofwarcraft)](https://worldofwarcraft.com)
[![Interface](https://img.shields.io/badge/Interface-120000%2C120001-8b0941?style=flat-square)](https://github.com/donniedice/CoordinationCloakUtility)
[![Version](https://img.shields.io/badge/Version-v3.5.0-3598db?style=flat-square)](https://github.com/donniedice/CoordinationCloakUtility/releases)

[Features](#features) • [Quick Start](#quick-start) • [Commands](#command-reference) • [Compatibility](#compatibility) • [Installation](#installation) • [Support](#support)

</div>

---

## <span style="color:#8b0941">🌟 Join the </span> <span style="color:#8B1538">R</span><span style="color:#8B1538">G</span><span style="color:#8B1538">X</span> <span style="color:#4ecdc4">Mods Community!</span>

<div align="center">

### <span style="color:#8b0941">💬 </span> <span style="color:#8B1538">R</span><span style="color:#7598b6">ealm</span><span style="color:#8B1538">G</span><span style="color:#8B1538">X</span> <span style="color:#8b0941">Discord</span> <span style="color:#3598db">-</span> <span style="color:#2dc26b">Your Gaming Home!</span>

[![Join Discord](https://img.shields.io/badge/Join%20Our%20Discord-RealmGX%20Community-7289da?style=for-the-badge&logo=discord&logoColor=white&labelColor=5865F2)](https://discord.gg/N7kdKAHVVF)

**<span style="color:#e67e23">Get support, share bug reports, request features, and keep up with new RGX Mods releases.</span>**

<img src="https://raw.githubusercontent.com/donniedice/SimpleQuestPlates/main/images/kiwi.gif" alt="RealmGX Kiwi" width="100">

</div>

---

## <span style="color:#8b0941">🪄 What is CCU?</span>

**<span style="color:#8B1538">R</span><span style="color:#8B1538">G</span><span style="color:#8B1538">X</span> <span style="color:#fff">|</span> <span style="color:#8b0941">CCU</span>** <span style="color:#e67e23">keeps teleport cloak usage simple. Type</span> ` /ccu ` <span style="color:#e67e23">to show the popup use button, or click the minimap icon to run the same cloak-selection flow without typing first.</span>

### <span style="color:#8b0941">🔥 Why Choose CCU?</span>
- **<span style="color:#2dc26b">Smart Cloak Detection</span>** <span style="color:#e67e23">finds supported teleport cloaks in your bags automatically</span>
- **<span style="color:#8b0941">One-Click Use Flow</span>** <span style="color:#e67e23">equips the cloak first, then gives you a secure button or minimap action to activate it</span>
- **<span style="color:#8b0941">Automatic Restore</span>** <span style="color:#e67e23">re-equips your original cloak after teleporting</span>
- **<span style="color:#4ecdc4">Cooldown Aware</span>** <span style="color:#e67e23">skips cloaks on cooldown and tells you how long is left</span>
- **<span style="color:#ff6b6b">Combat Safe</span>** <span style="color:#e67e23">respects combat lockdown and avoids protected gear swaps</span>

---

## <span style="color:#8b0941">✨ Features</span>

<div align="center">

| Feature | Description |
|---------|-------------|
| 🔍 **Smart Cloak Detection** | Finds supported teleportation cloaks in your bags |
| ⚡ **Reliable Use Button** | Uses the equipped back-slot cloak through a secure click action |
| 🎯 **Auto Restore** | Re-equips your previous cloak after teleportation |
| ⏱️ **Cooldown Reporting** | Prints remaining cooldown when a cloak is unavailable |
| 📌 **Draggable Button** | Lets you place the cloak button where you want it |
| 🧭 **Movable Minimap Icon** | Uses the CCU logo and can be right-dragged around the minimap |
| 🌍 **Localized Support** | Supports major WoW locales automatically |

</div>

### <span style="color:#8b0941">🗺️ Supported Teleportation Cloaks</span>

<div align="center">

| Cloak | Faction | Item IDs |
|-------|---------|----------|
| Cloak of Coordination | Guild | `65274`, `65360` |
| Wrap of Unity | Alliance | `63206`, `63207` |
| Shroud of Cooperation | Horde | `63352`, `63353` |

</div>

---

## <span style="color:#8b0941">🚀 Quick Start</span>

1. **<span style="color:#2dc26b">Install</span>** <span style="color:#e67e23">CCU from your preferred addon site</span>
2. **<span style="color:#4ecdc4">Log in</span>** <span style="color:#e67e23">on any character with a supported teleport cloak in their bags</span>
3. **<span style="color:#8b0941">Type</span>** `/ccu` <span style="color:#e67e23">to equip the best available cloak and show the popup button</span>
4. **<span style="color:#8b0941">Or click</span>** <span style="color:#e67e23">the minimap icon to run the cloak flow directly</span>
5. **<span style="color:#2dc26b">Let CCU restore</span>** <span style="color:#e67e23">your previous cloak after the teleport finishes</span>

---

## <span style="color:#8b0941">📋 Command Reference</span>

<span style="color:#e67e23">Use</span> <span style="color:#2dc26b">`/ccu`</span> <span style="color:#e67e23">followed by</span><span style="color:#3598db">:</span>

<div align="center">

| Command | Description |
|---------|-------------|
| `/ccu` | Trigger cloak detection and show the use button |
| `/ccu help` | Show available commands |
| `/ccu welcome` | Toggle the login welcome message |

</div>

---

## <span style="color:#8b0941">📋 Compatibility</span>

<div align="center">

| WoW Version | Interface | Status |
|-------------|-----------|--------|
| **Retail Midnight** | `120000`, `120001` | ✅ Fully Supported |
| **Mists of Pandaria Classic** | `50503` | ✅ Metadata included |

</div>

---

## <span style="color:#8b0941">📥 Installation</span>

1. **<span style="color:#2dc26b">Download</span>** <span style="color:#e67e23">from your preferred platform</span><span style="color:#3598db">:</span>
   - [<span style="color:#ff6b6b">CurseForge</span>](https://www.curseforge.com/wow/addons/ccu-coordination-cloak-utility)
   - [<span style="color:#8b0941">Wago.io</span>](https://addons.wago.io/addons/ccu)
   - [<span style="color:#4ecdc4">WoWInterface</span>](https://www.wowinterface.com/downloads/info26468)
   - [<span style="color:#24292e">GitHub</span>](https://github.com/donniedice/CoordinationCloakUtility/releases)

2. **<span style="color:#4ecdc4">Extract</span>** <span style="color:#e67e23">to your WoW AddOns folder</span><span style="color:#3598db">:</span>
   - <span style="color:#e67e23">`World of Warcraft/_retail_/Interface/AddOns/CoordinationCloakUtility`</span>

3. **<span style="color:#8b0941">Restart</span>** <span style="color:#e67e23">or reload WoW and make sure CCU is enabled</span>

---

## <span style="color:#8b0941">🆕 What's New</span>

<details>
<summary><strong><span style="color:#8b0941">v3.5.0 - Feature Release</span></strong></summary>

- <span style="color:#2dc26b">Added</span> <span style="color:#e67e23">a movable minimap icon using the CCU logo so you can trigger the cloak flow without typing `/ccu` first</span>
- <span style="color:#4ecdc4">Kept</span> <span style="color:#e67e23">`/ccu` as the popup-button path while sharing the secure teleport setup between the popup and minimap controls</span>
- <span style="color:#8b0941">Updated</span> <span style="color:#e67e23">CCU branding to the `#8b0941` color and moved local addon art into `media/` with the new `ccu.tga` minimap asset</span>

</details>

_<span style="color:#e67e23">See</span> [<span style="color:#8b0941">docs/CHANGES.md</span>](./docs/CHANGES.md) <span style="color:#e67e23">for release history.</span>_

---

## <span style="color:#8b0941">🔧 Troubleshooting</span>

**<span style="color:#ff6b6b">The button appears but nothing happens?</span>**
- <span style="color:#e67e23">Update to</span> `v3.5.0` <span style="color:#e67e23">or newer</span>
- <span style="color:#e67e23">Make sure the teleport cloak is actually equipped before clicking the icon</span>
- <span style="color:#e67e23">Avoid combat, vehicle states, and other protected-action edge cases</span>

**<span style="color:#ff6b6b">No cloak found?</span>**
- <span style="color:#e67e23">Check that one of the supported cloaks is in your bags</span>
- <span style="color:#e67e23">If every supported cloak is on cooldown, CCU will report that instead of showing the button</span>

**<span style="color:#ff6b6b">Original cloak not restored?</span>**
- <span style="color:#e67e23">Let zoning finish completely before expecting the re-equip</span>
- <span style="color:#e67e23">If item info is still loading, try again after a short moment or use</span> `/reload`

---

## <span style="color:#8b0941">💖 Support</span>

<div align="center">

| | |
|---|---|
| [![Donate](https://img.shields.io/badge/Donate-CashApp-00C853?style=for-the-badge&logo=cash-app&logoColor=white)](https://bit.ly/3fyxxSU) | [![Buy Me a Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-Support-FFDD00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://buymeacoffee.com/donniedice) |
| [![GitHub Sponsor](https://img.shields.io/badge/Sponsor-GitHub-ff69b4?style=for-the-badge&logo=github-sponsors&logoColor=white)](https://github.com/sponsors/donniedice) | [![Star](https://img.shields.io/badge/⭐-Star%20this%20repository-yellow?style=for-the-badge&logo=github)](https://github.com/donniedice/CoordinationCloakUtility) |

</div>

---

## <span style="color:#8b0941">🤝 Feedback and Contributions</span>

- <span style="color:#e67e23">Report bugs on</span> [<span style="color:#ff6b6b">GitHub Issues</span>](https://github.com/donniedice/CoordinationCloakUtility/issues)
- <span style="color:#e67e23">Request features in the</span> [<span style="color:#7289da">RGX Discord</span>](https://discord.gg/N7kdKAHVVF)
- <span style="color:#e67e23">Share CCU with guildmates who still manually swap teleport cloaks</span>

---

## <span style="color:#8b0941">📄 License</span>

<span style="color:#e67e23">This project is licensed under the</span> [<span style="color:#2dc26b">MIT License</span>](https://github.com/donniedice/CoordinationCloakUtility/blob/main/LICENSE)<span style="color:#e67e23">.</span>

---

<div align="center">

**<span style="color:#e67e23">Made with ❤️ by the</span> [<span style="color:#8B1538">R</span><span style="color:#7598b6">ealm</span><span style="color:#8B1538">G</span><span style="color:#8B1538">X</span>](https://realmgx.com) <span style="color:#8b0941">Community</span>**

**<span style="color:#2dc26b">Lead Developer</span><span style="color:#3598db">:</span>** [<span style="color:#8b0941">DonnieDice</span>](https://github.com/donniedice)

_<span style="color:#e67e23">"Teleport smarter, not harder."</span>_

</div>

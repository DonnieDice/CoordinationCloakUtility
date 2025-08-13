-- Localization Loader for CCU
local _, CCU = ...

-- Initialize localization tables
CCU.L = {}
CCU.Locale = {}

-- Function to get localized string with color codes
function CCU:GetLocalizedString(key)
    local locale = GetLocale() or "enUS"
    local strings = CCU.Locale[locale] or CCU.Locale["enUS"]
    
    if not strings or not strings[key] then
        -- Fallback to English if string not found
        strings = CCU.Locale["enUS"]
        if not strings or not strings[key] then
            return key  -- Return the key itself if nothing found
        end
    end
    
    -- Apply color codes to the localized string
    local text = strings[key]
    
    -- Apply colors based on the key type
    if key == "WELCOME_MSG" then
        return CCU.colors.white .. text:gsub("/ccu help", CCU.colors.prefix .. "/ccu help|r")
    elseif key == "VERSION" then
        return CCU.colors.info .. text .. "|r"
    elseif key == "ORIGINAL_CLOAK_SAVED" or key == "REEQUIP_CLOAK" then
        return CCU.colors.info .. text .. "|r"
    elseif key == "CLOAK_EQUIPPED" then
        return CCU.colors.success .. text:sub(1, text:find("%.") or -1) .. CCU.colors.info .. text:sub((text:find("%.") or 0) + 1) .. "|r"
    elseif key == "CLOAK_ALREADY_EQUIPPED" or key == "CLOAK_UNEQUIPPED" or key == "HIDING_BUTTON" or key == "PROCESS_RESET" then
        return CCU.colors.info .. text .. "|r"
    elseif key == "FAILED_EQUIP" or key == "FINAL_FAILED_EQUIP" or key == "REEQUIP_FAILED" or key == "NO_CLOAK_REEQUIP" or key == "NO_USABLE_CLOAK" or key == "COMBAT_ACTIVE" then
        return CCU.colors.error .. text .. "|r"
    elseif key == "SUCCESS_EQUIP" or key == "REEQUIP_SUCCESS" or key == "WELCOME_MSG_ENABLED" or key == "TELEPORTATION_IN_PROGRESS" then
        return CCU.colors.success .. text .. "|r"
    elseif key == "WELCOME_MSG_DISABLED" then
        return CCU.colors.error .. text .. "|r"
    elseif key == "HELP_COMMAND" then
        return CCU.colors.info .. text
    elseif key == "HELP_OPTION_PANEL" or key == "HELP_WELCOME" or key == "HELP_HELP" then
        local cmd = text:match("(/ccu[^%s]*)")
        if cmd then
            return " " .. CCU.colors.prefix .. cmd .. "|r" .. text:sub(#cmd + 1)
        end
        return text
    elseif key == "UNKNOWN_COMMAND" then
        return CCU.colors.warning .. text:gsub("/ccu help", CCU.colors.prefix .. "/ccu help|r") .. "|r"
    elseif key == "CLOAK_ON_CD" then
        -- This one needs special formatting with %s placeholders
        return CCU.colors.error .. text:gsub("(%s)", "%%s") .. "|r"
    else
        return text
    end
end

-- Load localization strings after all locale files are loaded
function CCU:InitializeLocalization()
    local locale = GetLocale() or "enUS"
    
    -- Build the CCU.L table with colored strings
    CCU.L = {}
    local keys = {
        "WELCOME_MSG", "VERSION", "ORIGINAL_CLOAK_SAVED", "CLOAK_EQUIPPED",
        "CLOAK_ALREADY_EQUIPPED", "FAILED_EQUIP", "SUCCESS_EQUIP", "FINAL_FAILED_EQUIP",
        "REEQUIP_CLOAK", "REEQUIP_SUCCESS", "REEQUIP_FAILED", "NO_CLOAK_REEQUIP",
        "HELP_COMMAND", "HELP_OPTION_PANEL", "HELP_WELCOME", "HELP_HELP",
        "UNKNOWN_COMMAND", "CLOAK_ON_CD", "NO_USABLE_CLOAK", "COMBAT_ACTIVE",
        "WELCOME_MSG_ENABLED", "WELCOME_MSG_DISABLED", "TELEPORTATION_IN_PROGRESS",
        "CLOAK_UNEQUIPPED", "HIDING_BUTTON", "PROCESS_RESET", "BUTTON_TEXT", "BUTTON_TOOLTIP"
    }
    
    for _, key in ipairs(keys) do
        CCU.L[key] = CCU:GetLocalizedString(key)
    end
    
    -- Special handling for CLOAK_ON_CD which needs formatting
    local baseText = CCU.Locale[locale] and CCU.Locale[locale]["CLOAK_ON_CD"] or CCU.Locale["enUS"]["CLOAK_ON_CD"]
    CCU.L.CLOAK_ON_CD = CCU.colors.error .. baseText:gsub("%%s remaining%.", "%%s" .. CCU.colors.info .. " remaining.|r")
end
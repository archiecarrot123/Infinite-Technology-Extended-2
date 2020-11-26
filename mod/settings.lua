disabled_enabled = {"Disabled", "Enabled"}

local function wit_newModSetting_startup_string(name, order, default, allowedvalues)
    data:extend({
        {
            name = name,
            order = order,
            type = "string-setting",
            setting_type = "startup",
            default_value = default,
            allowed_values = allowedvalues
        }
    })
end

wit_newModSetting_startup_string("wit-research-disablemodresearch", "a", "Enabled", disabled_enabled)
wit_newModSetting_startup_string("wit-research-charinvslots", "b", "Disabled", disabled_enabled)
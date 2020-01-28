require("settings-values")

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

local function wcm_newModSetting_startup_int(name, order, type, default, minimumvalue, maximumvalue)
    data:extend({
        {
            name = name,
            order = order,
            type = "int-setting",
            setting_type = "startup",
            default_value = default,
            minimum_value = minimumvalue,
            maximum_value = maximumvalue
        }
    })
end



wit_newModSetting_startup_string("wit-research-disablemodresearch", "a", "Enabled", disabled_enabled)
wit_newModSetting_startup_string("wit-research-charinvslots", "b", "Disabled", disabled_enabled)
local function wit_newModSetting_startup_bool(name, order, default)
    data:extend({
        {
            name = name,
            order = order,
            type = "bool-setting",
            setting_type = "startup",
            default_value = default,
        }
    })
end

wit_newModSetting_startup_bool("wit-research-disablemodresearch", "a", true)
wit_newModSetting_startup_bool("wit-research-charinvslots", "b", true)
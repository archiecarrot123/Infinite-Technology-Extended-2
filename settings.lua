local function ite_newModSetting_startup_bool(name, order, default)
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

ite_newModSetting_startup_bool("ite-research-enablemodresearch", "a", true)
ite_newModSetting_startup_bool("ite-research-charinvslots", "b", true)

local function ite_newModSetting_startup_bool(name, order, default) --makes a function to make everything easier
    data:extend({
        {
            name = "ite-research-"..name,
            order = order,
            type = "bool-setting",
            setting_type = "startup",
            default_value = default,
        }
    })
end

--adding boolean startup settings (checkbox)
ite_newModSetting_startup_bool("enablemodresearch", "c", true)
ite_newModSetting_startup_bool("charinvslots", "b", true)
ite_newModSetting_startup_bool("compat", "a", false)
ite_newModSetting_startup_bool("weapon-shooting-speed", "c-a", true)
ite_newModSetting_startup_bool("laser-shooting-speed", "c-a", true)
ite_newModSetting_startup_bool("worker-robots-storage", "c-a", true)
ite_newModSetting_startup_bool("research-speed", "c-a", true)
ite_newModSetting_startup_bool("braking-force", "c-a", true)
ite_newModSetting_startup_bool("inserter-capacity-bonus", "c-a", true)
ite_newModSetting_startup_bool("toolbelt", "c-b", true)

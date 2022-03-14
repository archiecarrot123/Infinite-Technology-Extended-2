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
local function ite_newModSetting_startup_double(name, order, default) --makes a function to make everything easier
    data:extend({
        {
            name = "ite-bonus-"..name,
            order = order,
            type = "double-setting",
            setting_type = "startup",
            default_value = default,
        }
    })
end

--adding boolean startup settings (checkbox)
ite_newModSetting_startup_bool("enablemodresearch", "c", true)
ite_newModSetting_startup_bool("charinvslots", "b", true)
ite_newModSetting_startup_bool("compat", "a", false)
ite_newModSetting_startup_bool("braking-force", "d-a", true)
ite_newModSetting_startup_double("train-braking-force-bonus", "d-a-t", 0.25)
ite_newModSetting_startup_bool("inserter-capacity-bonus", "d-b", true)
ite_newModSetting_startup_double("stack-inserter-capacity-bonus", "d-b-s", 2)
ite_newModSetting_startup_double("inserter-stack-size-bonus", "d-b-i", 0)
ite_newModSetting_startup_bool("laser-shooting-speed", "d-c", true)
ite_newModSetting_startup_double("laser", "d-c-l", 0.5)
ite_newModSetting_startup_bool("research-speed", "d-d", true)
ite_newModSetting_startup_double("laboratory-speed", "d-d-l", 1)
ite_newModSetting_startup_bool("weapon-shooting-speed", "d-e", true)
ite_newModSetting_startup_double("bullet", "d-e-b", 0.4)
ite_newModSetting_startup_double("shotgun", "d-e-s", 0.4)
ite_newModSetting_startup_double("cannon", "d-e-c", 1.5)
ite_newModSetting_startup_double("rocket", "d-e-r", 1.3)
ite_newModSetting_startup_bool("worker-robots-storage", "d-f", true)
ite_newModSetting_startup_double("worker-robot-storage", "d-f-w", 1)
ite_newModSetting_startup_bool("toolbelt", "e-a", true)
ite_newModSetting_startup_double("character-inventory-slots-bonus", "e-a-c", 10)
ite_newModSetting_startup_double("character-inventory-slots-bonus-infinite", "e-a-c", 5)

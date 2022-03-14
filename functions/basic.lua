function modSetting(modsetting) return settings.startup["ite-research-"..modsetting] end --this function returns the mod setting (only works for startup settings)

function add_infinite_technology(tname, tlevel, ticons, teffects,--[[ tprerequisites,--]] tformula, tmilitary,--[[ tinfinite,--]] torder, ttime) --A function that makes this "easier"
    if modSetting(tname).value == true then
        local ttable = {
            type = "technology",
            name = tname.."-"..tlevel,
            icons = ticons,
            icon_size = 256, icon_mipmaps = 4,
            effects = teffects,
            prerequisites = {tname.."-"..(tlevel-1), "space-science-pack"},
            unit =
            {
                count_formula = tformula,
                time = 60
            },
            upgrade = true,
            order = torder,
            max_level = "infinite"
        }
        if tmilitary then
            ttable.unit.ingredients =   {   {"automation-science-pack", 1},
                                            {"logistic-science-pack", 1},
                                            {"chemical-science-pack", 1},
                                            {"military-science-pack", 1},
                                            {"utility-science-pack", 1},
                                            {"space-science-pack", 1}
                                        }
        else
            ttable.unit.ingredients =   {   {"automation-science-pack", 1},
                                            {"logistic-science-pack", 1},
                                            {"chemical-science-pack", 1},
                                            {"production-science-pack", 1},
                                            {"utility-science-pack", 1},
                                            {"space-science-pack", 1}
                                        }
        end
        if ttime then
            ttable.unit.time = ttime
        end
        --log(serpent.block(ttable)) --debugging a typo is fun /s
        data:extend({ttable}) --add table to data.raw
    end
end

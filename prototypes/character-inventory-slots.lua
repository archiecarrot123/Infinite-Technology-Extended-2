function technology_charinvslots(level, count, time)
    data:extend({
        {
            type = "technology", name = "toolbelt-"..level.."",
            icons = util.technology_icon_constant_capacity("__base__/graphics/technology/toolbelt.png"), icon_size = 256, icon_mipmaps = 4,
            effects = {{type = "character-inventory-slots-bonus", modifier = bonusSetting("character-inventory-slots-bonus").value}},
            prerequisites = {"toolbelt-"..(level - 1)..""},
            unit = {count = count, time = time},
            upgrade = true,
            order = "c-k-f-a"
        }
    })
end

if modSetting("charinvslots").value == true then --if the caracter inventory slots research is enabled in the startup settings

    if data.raw.technology["toolbelt"] or data.raw.technology["toolbelt-1"] then
        technology_charinvslots(2, 100, 30)
        data.raw.technology["toolbelt-2"].unit.ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}}
        technology_charinvslots(3, 250, 30)
        data.raw.technology["toolbelt-3"].unit.ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"production-science-pack", 1}}
        technology_charinvslots(4, 250, 30)
        data.raw.technology["toolbelt-4"].unit.ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"production-science-pack", 1}, {"utility-science-pack", 1}}

        add_infinite_technology("toolbelt", 
                                5,
                                util.technology_icon_constant_capacity("__base__/graphics/technology/toolbelt.png"), 
                                {   {type = "character-inventory-slots-bonus", modifier = bonusSetting("character-inventory-slots-bonus-infinite").value}
                                },
                                "(L-4)^2*500",
                                false,
                                "c-k-f-h",
                                30
                                )

    end

end

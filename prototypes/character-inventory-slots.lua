function technology_charinvslots(level, count, time, packs)
    data:extend({
        {
            type = "technology", name = "toolbelt-"..level.."",
            icon = "__base__/graphics/technology/toolbelt.png", icon_size = 256, icon_mipmaps = 4,
            effects = {{type = "character-inventory-slots-bonus", modifier = 10}},
            prerequisites = {"toolbelt-"..(level - 1)..""},
            unit = {count = count, time = time},
            upgrade = "true",
            order = "c-k-f-a"
        }
    })
end

if modSetting("ite-research-charinvslots").value ~= false then

    if not data.raw.technology["toolbelt-1"] then
        data.raw.technology["toolbelt"].localised_name = "Toolbelt 1"
        data:extend({
            {
                type = "technology", name = "toolbelt-2",
                icon = "__base__/graphics/technology/toolbelt.png", icon_size = 256, icon_mipmaps = 4,
                effects = {{type = "character-inventory-slots-bonus", modifier = 10}},
                prerequisites = {"toolbelt"},
                unit = {count = 100, time = 30},
                upgrade = "true",
                order = "c-k-f-a"
            }
        })


        data.raw.technology["toolbelt-2"].unit.ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}}
        technology_charinvslots(3, 250, 30)
        data.raw.technology["toolbelt-3"].unit.ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"production-science-pack", 1}}
        technology_charinvslots(4, 250, 30)
        data.raw.technology["toolbelt-4"].unit.ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"production-science-pack", 1}, {"utility-science-pack", 1}}

        data:extend({
            {
                type = "technology",
                name = "toolbelt-5",
                icon = "__base__/graphics/technology/toolbelt.png",
                icon_size = 256, icon_mipmaps = 4,
                effects =
                {
                    {type = "character-inventory-slots-bonus", modifier = 5}
                },
                prerequisites = {"toolbelt-4", "space-science-pack"},
                unit =
                    {
                        count_formula = "(L-4)^2*500",
                        ingredients =
                        {
                            {"automation-science-pack", 1},
                            {"logistic-science-pack", 1},
                            {"chemical-science-pack", 1},
                            {"production-science-pack", 1},
                            {"utility-science-pack", 1},
                            {"space-science-pack", 1}
                        },
                        time = 30
                    },
                max_level = "infinite",
                upgrade = true,
                order = "c-k-f-h"
            }
        })

    end

end

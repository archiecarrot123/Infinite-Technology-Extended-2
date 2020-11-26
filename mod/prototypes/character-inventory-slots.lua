if modSetting("wit-research-charinvslots").value ~= "Disabled" then

    if not data.raw.technology["character-inventory-slots-1"] then
        data:extend({
            {
                type = "technology", name = "character-inventory-slots-1",
                icon = "__base__/graphics/technology/toolbelt.png", icon_size = 128,
                effects = {{type = "character-inventory-slots-bonus", modifier = 5}},
                unit = {count = 50, ingredients = {{"automation-science-pack", 1}}, time = 30},
                order = "c-k-f-a"
            }
        })

        technology_charinvslots(2, 50, 30)
        data.raw.technology["character-inventory-slots-2"].unit.ingredients = {{"automation-science-pack", 1}}
        technology_charinvslots(3, 50, 30)
        data.raw.technology["character-inventory-slots-3"].unit.ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}}
        technology_charinvslots(4, 100, 30)
        data.raw.technology["character-inventory-slots-4"].unit.ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}}
        technology_charinvslots(5, 100, 30)
        data.raw.technology["character-inventory-slots-5"].unit.ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}}
        technology_charinvslots(6, 250, 30)
        data.raw.technology["character-inventory-slots-6"].unit.ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"production-science-pack", 1}}
        technology_charinvslots(7, 250, 30)
        data.raw.technology["character-inventory-slots-7"].unit.ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"production-science-pack", 1}, {"utility-science-pack", 1}}

        data:extend({
            {
                type = "technology",
                name = "character-inventory-slots-8",
                icon = "__base__/graphics/technology/toolbelt.png",
                icon_size = 128,
                effects =
                {
                    {type = "character-inventory-slots-bonus", modifier = 5}
                },
                prerequisites = {"character-inventory-slots-7"},
                unit =
                    {
                        count_formula = "(L-7)*1000",
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
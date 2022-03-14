require "util"

require("functions.basic")

if modSetting("ite-research-compat").value == true and modSetting("ite-research-enablemodresearch").value == true then
    if data.raw["technology"]["braking-force-8"].max_level ~= "infinite" then
        data:extend({{
            type = "technology",
            name = "braking-force-10",
            icons = util.technology_icon_constant_braking_force("__base__/graphics/technology/braking-force.png"),
            icon_size = 256, icon_mipmaps = 4,
            effects =
            {
                {
                    type = "train-braking-force-bonus",
                    modifier = 0.25
                }
            },
            prerequisites = {"braking-force-9", "space-science-pack"},
            unit =
            {
                count_formula = "(L-9)^2*1000",
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"utility-science-pack", 1},
                    {"space-science-pack", 1}
                },
                time = 60
            },
            max_level = "infinite",
            upgrade = true,
            order = "b-f-h"
        }})
    end
end

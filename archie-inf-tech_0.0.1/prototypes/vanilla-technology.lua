if modSetting("wit-research-disablemodresearch").value ~= "Disabled" then

    data:extend({

        {
            type = "technology",
            name = "weapon-shooting-speed-7",
            icon = "__base__/graphics/technology/weapon-shooting-speed-3.png",
            icon_size = 128,
            effects =
            {
                {
                    type = "gun-speed",
                    ammo_category = "bullet",
                    modifier = 0.4
                }
            },
            prerequisites = {"weapon-shooting-speed-6"},
            unit =
            {
                count_formula = "(L-6)*1000",
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"military-science-pack", 1},
                    {"utility-science-pack", 1},
                    {"space-science-pack", 1}
                },
                time = 60
            },
            max_level = "infinite",
            upgrade = true,
            order = "e-l-g"
        },

        {
            type = "technology",
            name = "laser-turret-speed-8",
            icon = "__base__/graphics/technology/laser-turret-speed.png",
            icon_size = 128,
            effects =
            {
                {
                    type = "gun-speed",
                    ammo_category = "laser-turret",
                    modifier = 1
                }
            },
            prerequisites = {"laser-turret-speed-7"},
            unit =
            {
                count_formula = "(L-7)*1000",
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"military-science-pack", 1},
                    {"utility-science-pack", 1},
                    {"space-science-pack", 1}
                },
                time = 60
            },
            max_level = "infinite",
            upgrade = true,
            order = "e-n-o"
        },

        {
            type = "technology",
            name = "worker-robots-storage-4",
            icon = "__base__/graphics/technology/worker-robots-storage.png",
            icon_size = 128,
            effects =
            {
                {
                    type = "worker-robot-storage",
                    modifier = 1
                }
            },
            prerequisites = {"worker-robots-storage-3"},
            unit =
            {
                count = 750,
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"utility-science-pack", 1}
                },
                time = 60
            },
        upgrade = true,
        order = "c-k-g-d"
        },

        {
            type = "technology",
            name = "worker-robots-storage-5",
            icon = "__base__/graphics/technology/worker-robots-storage.png",
            icon_size = 128,
            effects =
            {
                {
                    type = "worker-robot-storage",
                    modifier = 1
                }
            },
            prerequisites = {"worker-robots-storage-4"},
            unit =
            {
                count_formula = "(L-4)*1000",
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
        upgrade = true,
        max_level = "infinite",
        order = "c-k-g-e"
        },

        {
            type = "technology",
            name = "character-logistic-trash-slots-6",
            icon = "__base__/graphics/technology/character-logistic-trash-slots.png",
            icon_size = 128,
            effects =
            {
                {
                    type = "character-logistic-trash-slots",
                    modifier = 6
                }
            },
            prerequisites = {"character-logistic-trash-slots-5"},
            unit =
            {
                count_formula = "(L-5)*1000",
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"utility-science-pack", 1},
                    {"production-science-pack", 1},
                    {"space-science-pack", 1}
                },
                time = 30
            },
            max_level = 6,
            upgrade = true,
            order = "c-k-f-c"
        },

        {
            type = "technology",
            name = "research-speed-7",
            icon = "__base__/graphics/technology/research-speed.png",
            icon_size = 128,
            effects =
            {
                {
                    type = "laboratory-speed",
                    modifier = 1
                }
            },
            prerequisites = {"research-speed-6"},
            unit =
            {
                count_formula = "(L-6)*1000",
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
            order = "c-m-e"
        },

        {
            type = "technology",
            name = "braking-force-8",
            icon = "__base__/graphics/technology/braking-force.png",
            icon_size = 128,
            effects =
            {
                {
                    type = "train-braking-force-bonus",
                    modifier = 0.25
                }
            },
            prerequisites = {"braking-force-7"},
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
                time = 60
            },
            max_level = "infinite",
            upgrade = true,
            order = "b-f-h"
        },

        {
            type = "technology",
            name = "inserter-capacity-bonus-8",
            icon = "__base__/graphics/technology/inserter-capacity.png",
            icon_size = 128,
            effects =
            {
                {
                    type = "stack-inserter-capacity-bonus",
                    modifier = 2
                }
            },
            prerequisites = {"inserter-capacity-bonus-7"},
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
            order = "c-o-i"
        }

    })

end
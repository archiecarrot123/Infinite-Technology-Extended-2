--This file adds to the vanilla techs
if modSetting("enablemodresearch").value == true then --if the infinite research is enabled in the startup settings
    --note: if you're looking for the conditions, they're in functions.basic
    add_infinite_technology("weapon-shooting-speed", 
                            7,
                            util.technology_icon_constant_speed("__base__/graphics/technology/weapon-shooting-speed-3.png"), 
                            {   {   type = "gun-speed",
                                    ammo_category = "bullet",
                                    modifier = 0.4
                                },  
                                {   type = "gun-speed",
                                    ammo_category = "shotgun-shell",
                                    modifier = 0.4
                                },  
                                {   type = "gun-speed",
                                    ammo_category = "cannon-shell",
                                    modifier = 1.5
                                },  
                                {   type = "gun-speed",
                                    ammo_category = "rocket",
                                    modifier = 1.3
                                }
                            },
                            "2^(L-7)*1000",
                            true,
                            "e-l-g"
                            )

    add_infinite_technology("laser-shooting-speed", 
                            8,
                            util.technology_icon_constant_speed("__base__/graphics/technology/laser-shooting-speed.png"), 
                            {   {   type = "gun-speed",
                                    ammo_category = "laser",
                                    modifier = 0.5
                                }
                            },
                            "(L-7)^2*1000",
                            true,
                            "e-l-g"
                            )
    
    add_infinite_technology("worker-robots-storage", 
                            5,
                            util.technology_icon_constant_capacity("__base__/graphics/technology/worker-robots-storage.png"), 
                            {   {   type = "worker-robot-storage",
                                    modifier = 1
                                }
                            },
                            "(L-4)^2*1000",
                            false,
                            "c-k-g-e"
                            )

    add_infinite_technology("research-speed", 
                            7,
                            util.technology_icon_constant_speed("__base__/graphics/technology/research-speed.png"), 
                            {   {   type = "laboratory-speed",
                                    modifier = 1
                                }
                            },
                            "2^(L-7)*1000",
                            false,
                            "c-m-e"
                            )

    add_infinite_technology("braking-force", 
                            8,
                            util.technology_icon_constant_braking_force("__base__/graphics/technology/braking-force.png"), 
                            {   {   type = "train-braking-force-bonus",
                                    modifier = 0.25
                                }
                            },
                            "(L-7)^2*1000",
                            false,
                            "b-f-h"
                            )

    add_infinite_technology("inserter-capacity-bonus", 
                            8,
                            util.technology_icon_constant_stack_size("__base__/graphics/technology/inserter-capacity.png"), 
                            {   {   type = "stack-inserter-capacity-bonus",
                                    modifier = 2
                                }
                            },
                            "3^(L-8)*1000",
                            false,
                            "c-o-i"
                            )

    if modSetting("worker-robots-storage").value == true then
        data:extend({ --this adds to the table of prototypes (data.raw)
        
            {
                type = "technology",
                name = "worker-robots-storage-4",
                icons = util.technology_icon_constant_capacity("__base__/graphics/technology/worker-robots-storage.png"),
                icon_size = 256, icon_mipmaps = 4,
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
            }

        })
    end

end

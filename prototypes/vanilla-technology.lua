--This file adds to the vanilla techs
if modSetting("enablemodresearch").value == true then --if the infinite research is enabled in the startup settings
    --note: if you're looking for the conditions, they're in functions.basic
    add_infinite_technology("weapon-shooting-speed", 
                            7,
                            util.technology_icon_constant_speed("__base__/graphics/technology/weapon-shooting-speed-3.png"), 
                            {   {   type = "gun-speed",
                                    ammo_category = "bullet",
                                    modifier = bonusSetting("bullet").value
                                },  
                                {   type = "gun-speed",
                                    ammo_category = "shotgun-shell",
                                    modifier = bonusSetting("shotgun").value
                                },  
                                {   type = "gun-speed",
                                    ammo_category = "cannon-shell",
                                    modifier = bonusSetting("cannon").value
                                },  
                                {   type = "gun-speed",
                                    ammo_category = "rocket",
                                    modifier = bonusSetting("rocket").value
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
                                    modifier = bonusSetting("laser").value
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
                                    modifier = bonusSetting("worker-robot-storage").value
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
                                    modifier = bonusSetting("laboratory-speed").value
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
                                    modifier = bonusSetting("train-braking-force-bonus").value
                                }
                            },
                            "(L-7)^2*1000",
                            false,
                            "b-f-h"
                            )
    
    if bonusSetting("inserter-stack-size-bonus").value == 0 then --this is a workaround to stop the inserter stack size bonus showing up when it is 0
        effects =   {   {   type = "stack-inserter-capacity-bonus",
                            modifier = bonusSetting("stack-inserter-capacity-bonus").value
                        }
                    }
    else
        effects =   {   {   type = "stack-inserter-capacity-bonus",
                            modifier = bonusSetting("stack-inserter-capacity-bonus").value
                        },
                        {   type = "inserter-stack-size-bonus",
                            modifier = bonusSetting("inserter-stack-size-bonus").value
                        }
                    }
    end
    add_infinite_technology("inserter-capacity-bonus", 
                            8,
                            util.technology_icon_constant_stack_size("__base__/graphics/technology/inserter-capacity.png"), 
                            effects,
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
                        modifier = bonusSetting("worker-robot-storage").value
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

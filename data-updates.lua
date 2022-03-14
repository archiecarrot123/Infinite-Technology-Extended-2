require "util"

require("functions.basic")

if modSetting("compat").value == true and modSetting("enablemodresearch").value == true then
    if data.raw["technology"]["braking-force-8"] and data.raw["technology"]["braking-force-8"].max_level ~= "infinite" then --first condition required to prevent indexing of nil
        add_infinite_technology("braking-force", 
                                10,
                                util.technology_icon_constant_braking_force("__base__/graphics/technology/braking-force.png"), 
                                {   {   type = "train-braking-force-bonus",
                                        modifier = 0.25
                                    }
                                },
                                "(L-9)^2*1000",
                                false,
                                "b-f-h"
                                )
    end
end

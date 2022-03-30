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

if data.raw.technology["toolbelt"] and not data.raw.technology["toolbelt-1"] and modSetting("charinvslots").value then
    data.raw.technology["toolbelt-1"] = data.raw.technology["toolbelt"] --what i'm doing here with the toolbelt might be a bit dodgy
    data.raw.technology["toolbelt"] = nil
    data.raw.technology["toolbelt-1"].name = "toolbelt-1"
    data.raw.technology["toolbelt-1"].upgrade = true
end

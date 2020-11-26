function technology_charinvslots(level, count, time, packs)
    data:extend({
        {
            type = "technology", name = "character-inventory-slots-"..level.."",
            icon = "__base__/graphics/technology/toolbelt.png", icon_size = 256, icon_mipmaps = 4,
            effects = {{type = "character-inventory-slots-bonus", modifier = 10}},
            prerequisites = {"character-inventory-slots-"..(level - 1)..""},
            unit = {count = count, time = time},
            upgrade = "true",
            order = "c-k-f-a"
        }
    })
end
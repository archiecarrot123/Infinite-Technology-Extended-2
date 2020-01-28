function makeInfinite(technology, level, effect, modifier, order, packs, countformula)
    data:extend({
        {
            type = "technology",
            name = ""..technology.."-"..level.."",
            icon = "__base__/graphics/technology/"..technology..".png",
            effects = {{type = effect, modifier = modifier}},
            prerequisites = {""..technology.."-"..(level - 1)..""},
            unit = {count_formula = countformula, ingredients = packs, time = 60},
            max_level = "infinite",
            upgrade = true,
            order = order
        }
    })
end

function makeInfiniteCombat(technology, level, effect, category, modifier, order, packs, countformula)
    data:extend({
        {
            type = "technology",
            name = ""..technology.."-"..level.."",
            icon = "__base__/graphics/technology/"..technology..".png",
            effects = {{type = effect, ammo_category = category, modifier = modifier}},
            prerequisites = {""..technology.."-"..(level - 1)..""},
            unit = {count_formula = countformula, ingredients = packs, time = 60},
            max_level = "infinite",
            upgrade = true,
            order = order
        }
    })
end
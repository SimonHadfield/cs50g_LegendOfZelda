--[[
    GD50
    Legend of Zelda

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

GAME_OBJECT_DEFS = {
    ['switch'] = {
        type = 'switch',
        texture = 'switches',
        frame = 2,
        width = 16,
        height = 16,
        solid = false,
        defaultState = 'unpressed',
        states = {
            ['unpressed'] = {
                frame = 2
            },
            ['pressed'] = {
                frame = 1
            }
        }
    },
    ['pot'] = {
        type = 'pot',
        texture = 'pots',
        frame = 110,
        width = 16,
        height = 16,
        solid = true,
        defaultState = 'pot1',
        states = {
            ['pot1'] = {
                frame = 110
            },
            ['pot2'] = {
                frame = 111
            }
        }
    }
}
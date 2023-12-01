--[[
    GD50
    Legend of Zelda

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

GameObject = Class{}

function GameObject:init(def, x, y)
    
    -- string identifying this object type
    self.type = def.type

    self.texture = def.texture
    self.frame = def.frame or 1

    -- whether it acts as an obstacle or not
    self.solid = def.solid

    self.defaultState = def.defaultState
    self.state = self.defaultState
    self.states = def.states

    self.paired = false
    self.thrown = false

    -- dimensions
    self.x = x
    self.y = y
    self.width = def.width
    self.height = def.height

    -- change in pos
    self.dx = 2
    self.dy = 2

    -- default empty collision callback
    self.onCollide = function() end

    self.onConsume = function() end

    self.onThrow = function() end

    self.onLift = function() end

end

function GameObject:update(dt)

end

function GameObject:render(adjacentOffsetX, adjacentOffsetY)
    love.graphics.draw(gTextures[self.texture], gFrames[self.texture][self.states[self.state].frame or self.frame],
        self.x + adjacentOffsetX, self.y + adjacentOffsetY)
end
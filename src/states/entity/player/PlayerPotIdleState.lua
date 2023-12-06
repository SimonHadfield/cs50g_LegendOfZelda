--[[
    GD50
    Legend of Zelda

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

PlayerPotIdleState = Class{__includes = EntityIdleState}

function PlayerPotIdleState:enter(params)
    
    -- render offset for spaced character sprite (negated in render function of state)
    self.entity.offsetY = 5
    self.entity.offsetX = 0

    self.entity:changeAnimation('pot-idle-' .. self.entity.direction)

end

function PlayerPotIdleState:update(dt)
    print('pot idle state')
    if love.keyboard.isDown('left') or love.keyboard.isDown('right') or
       love.keyboard.isDown('up') or love.keyboard.isDown('down') then
        self.entity:changeState('pot-walk')
    end

    -- no swing sword state

    if love.keyboard.wasPressed('e') and self.entity.potCollide == true and self.entity.potLifted == false then
        self.entity:changeState('pot-lift')
        self.entity.potLifted = true
    end

    if love.keyboard.wasPressed('f') and self.entity.potLifted == true then
        self.entity:changeState('idle')
        self.entity.potThrow = true
    end

end
--[[
    GD50
    Legend of Zelda

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

PlayerIdleState = Class{__includes = EntityIdleState}

function PlayerIdleState:enter(params)
    
    -- render offset for spaced character sprite (negated in render function of state)
    self.entity.offsetY = 5
    self.entity.offsetX = 0
end

function PlayerIdleState:update(dt)
    if love.keyboard.isDown('left') or love.keyboard.isDown('right') or
       love.keyboard.isDown('up') or love.keyboard.isDown('down') then
        self.entity:changeState('walk')
    end

    if love.keyboard.wasPressed('space') then
        self.entity:changeState('swing-sword')
    end

    if love.keyboard.wasPressed('e') and self.entity.potCollide == true and self.entity.potLifted == false and self.entity.potThrow == false  then
        self.entity:changeState('pot-lift')
        self.entity.potLifted = true
    end

    if self.entity.potLifted == true then
        --self.entity:changeState('pot-idle')
        --self.entity:changeState('pot-walk')
    end

    if love.keyboard.wasPressed('f') and self.entity.potLifted == true then
        self.entity:changeState('idle')
        self.entity.potThrow = true
    end

end
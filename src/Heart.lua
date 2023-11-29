--[[
    GD50
    Legend of Zelda

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

Heart = Class{}

function Heart:init(def)

    -- dimensions
    self.x = def.x or 0
    self.y = def.y or 0
    self.width = 10
    self.height = 10
    self.widthScale = 0.5
    self.heightScale = 0.5
    self.alpha = 255
    self.timer = 0
end

function Heart:update(dt)
    self.timer = self.timer + dt
    if self.timer > 2 then
        self.alpha = 20
    else
        self.alpha = 255
    end
end

function Heart:collides(target)
    --local selfY, selfHeight = self.y + self.height / 2, self.height - self.height / 2
    
    --return not (self.x + self.width < target.x or self.x > target.x + target.width or
     --           selfY + selfHeight < target.y or selfY > target.y + target.height)
end

function Heart:OnConsume(target)
    local selfY, selfHeight = self.y + self.height / 2, self.height - self.height / 2
    
    return not (self.x + self.width < target.x or self.x > target.x + target.width or
               selfY + selfHeight < target.y or selfY > target.y + target.height)
end

function Heart:render()
    
    love.graphics.setColor(255, 255, 255, self.alpha)
    love.graphics.draw(gTextures['hearts'], gFrames['hearts'][5], self.x, self.y, 0, self.widthScale, self.heightScale)
    love.graphics.setColor(255, 255, 255, 255)

end
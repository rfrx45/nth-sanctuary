local PixelateFX, super = Class(FXBase)

function PixelateFX:init(amount)
    super.init(self, 1)
    self.amount = amount
end

function PixelateFX:draw(texture)
    local last_shader = love.graphics.getShader()
    local shader = Assets.newShader("Pixelate")
    love.graphics.setShader(shader)
    local width, height = texture:getDimensions()
    shader:send("size", {width, height})
    shader:send("factor", self.amount)
    Draw.drawCanvas(texture)
    love.graphics.setShader(last_shader)
end
return PixelateFX
local BlendSprite, super = Class(Sprite)

function BlendSprite:init(texture, x, y, width, height, path, blend)
    super.init(self, texture, x, y, width, height, path)
	self.blendmode = blend or "add"
end

function BlendSprite:draw()
    love.graphics.setBlendMode(self.blendmode)
    super.draw(self)
	love.graphics.setBlendMode("alpha")
end

return BlendSprite
local WindowGlow, super = Class(Event, "window_glow")

function WindowGlow:init(data)
    super.init(self, data)
	self.siner = 0
	self.glows = 4
	self:setOrigin(0.5, 1)
    self:setSprite("world/events/window_glow/church_window_big")
end

function WindowGlow:update()
	super.update(self)	
	self.siner = self.siner + DTMULT
	self.sprite.alpha = self.alpha
end

function WindowGlow:draw()
    super.draw(self)
	love.graphics.setBlendMode("add")
	local xoff = -math.cos(math.rad(self.siner)) * 1
	local yoff = -math.sin(math.rad(self.siner)) * 1
	local dist = 4 * self.scale_x*2
	local scale = 0.05 * self.scale_x*2
	for i = 0, self.glows do
		Draw.setColor(1,1,1,((0.7 + math.sin(self.siner / 40) * 0.4) - (0.1 * i)) * self.alpha)
		Draw.draw(self.sprite.texture, (xoff * i * dist), yoff + (i * dist), 0, self.scale_x*2 + (scale * i), self.scale_y*2 + (scale * i))
	end
	love.graphics.setBlendMode("alpha")
	Draw.setColor(1,1,1,1)
end

return WindowGlow
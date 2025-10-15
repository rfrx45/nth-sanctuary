---@class Event.filter : Event
local event, super = Class(Event, "filter")

function event:init(data)
    super.init(self, data)
    local properties = data and data.properties or {}
	self.hsv = false
    self.fx = self:createFX(properties)
    self.fx.parent = self
    if data.shape ~= "point" then
        self:addFX(MaskFX(self))
    end
end

function event:drawMask()
    if self.collider then
        self.collider:drawFill()
    else
        love.graphics.rectangle("fill", 0,0,self:getSize())
    end
end

function event:update()
    super.update(self)
    if self.fx then
        self.fx:update()
    end
end

--- *Override* Returns an instance of the desired DrawFX, depending on the properties.
---@return DrawFX?
function event:createFX(properties)
    local fxtype = (properties.type or "hsv"):lower()
    if fxtype == "hsv" then
		self.hsv = true
        return HSVShiftFX()
    elseif fxtype == "hsv2" then
		self.hsv = true
		local hsv = HSVShiftFX()
		hsv.hue_start = 60;
		hsv.sat_start = 0.4;
		hsv.val_start = 1;
		hsv.hue_target = 80;
		hsv.sat_target = 0.4;
		hsv.val_target = 1;
		hsv.hue = hsv.hue_start;
		hsv.sat = hsv.sat_start;
		hsv.val = hsv.val_start;
		hsv.wave_time = 1;
        return hsv
    elseif fxtype == "hsv3" then
		self.hsv = true
		local hsv = HSVShiftFX()
		hsv.hue_start = -100;
		hsv.sat_start = 0.6;
		hsv.val_start = 1;
		hsv.hue_target = -140;
		hsv.sat_target = 0.6;
		hsv.val_target = 1.5;
		hsv.hue = hsv.hue_start;
		hsv.sat = hsv.sat_start;
		hsv.val = hsv.val_start;
		hsv.wave_time = 2;
        return hsv
    elseif fxtype == "prophecyscroll" then
		self.hsv = false
        return ProphecyScrollFX()
    end
end

function event:fullDraw(...)
    self.main_canvas = love.graphics.getCanvas() -- Usually SCREEN_CANVAS, but not always.
    super.fullDraw(self)
end

function event:draw()
    if not (self.fx and self.fx:isActive()) then
        return super.draw(self)
    end
    love.graphics.push()
    Draw.pushCanvasLocks()
    love.graphics.origin()
    local c = Draw.pushCanvas(SCREEN_WIDTH, SCREEN_HEIGHT)
    Draw.drawCanvas(self.main_canvas)
    Draw.popCanvas(true)
    love.graphics.clear(0, 0, 0, 1)
    self.fx:draw(c)
    Draw.popCanvasLocks()
    love.graphics.pop()
    super.draw(self)
end

return event
local Dummy, super = Class(Encounter)

function Dummy:init()
    super.init(self)

    -- Text displayed at the bottom of the screen at the start of the encounter
    self.text = "Holy fuck\n(TP Gain reduced because FUCK YOU)"

    -- Battle music ("battle" is rude buster)
    self.music = "3d_boss"
    -- Enables the purple grid battle background
    self.background = true

    self.reduced_tension = true
    self.siner = 0

    -- Add the dummy enemy to the encounter
    self.g = self:addEnemy("3d", 501, 269)

    --- Uncomment this line to add another!
    --self:addEnemy("dummy")
end

function Dummy:update()
    self.siner = self.siner + DTMULT
    self.g.y = self.g.y + math.cos(self.siner/10)*2
end

return Dummy
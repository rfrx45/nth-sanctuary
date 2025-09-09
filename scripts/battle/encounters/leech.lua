local Dummy, super = Class(Encounter)

function Dummy:init()
    super.init(self)

    -- Text displayed at the bottom of the screen at the start of the encounter
    self.text = [==[
        constricts you.
* (    Gain reduced outside of [color:green][shake:10]-[shake:0] [color:reset])
]==]

    -- Battle music ("battle" is rude buster)
    self.music = "titan_spawn2"
    -- Enables the purple grid battle background
    self.background = true

    self.reduced_tp = true

    -- Add the dummy enemy to the encounter
    self:addEnemy("leech")
    self:addEnemy("leech")
    self:addEnemy("leech")

    --- Uncomment this line to add another!
    --self:addEnemy("dummy")
end

return Dummy
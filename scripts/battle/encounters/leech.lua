local LeechSpawn, super = Class(Encounter)

function LeechSpawn:init()
    super.init(self)

    self.text = [==[
        constricts you.
* (    Gain reduced outside of [color:green][shake:10]-[shake:0] [color:reset])
]==]

    self.music = "titan_spawn2"
    self.background = true

    self:addEnemy("leech")
    self:addEnemy("leech")
    self:addEnemy("leech")
	
    self.toggle_shadow_mantle_all_bullets = true
    self.banish_goal = nil

    self.reduced_tension = true
    self.light_size = 48
    self.purified = false
    self.difficulty = 1
end

function LeechSpawn:onTurnEnd() 
    self.difficulty = self.difficulty + 1
end


function LeechSpawn:beforeStateChange(old, new) 
    if (new == "DEFENDING" or old == "CUTSCENE")and self.purified then
       -- self:explode()
            Game.battle:setState("VICTORY")
    end
end

return LeechSpawn
local ChaserOrb, super = Class(Wave)

function ChaserOrb:init()
    super.init(self)

    self.time = 4.0
    --self:setArenaSize(200)
    self.siner = 0
end

function ChaserOrb:onStart()
    self.timer:script(function(wait)
        wait(1)
            self:spawnBullet("poseur/chaserbullet", Game.battle.arena.right-math.random(1,200), Game.battle.arena.top+math.random(1,200))
            self:spawnBullet("poseur/chaserbullet", Game.battle.arena.right-math.random(1,200), Game.battle.arena.top+math.random(1,200))
            self:spawnBullet("poseur/chaserbullet", Game.battle.arena.right-math.random(1,200), Game.battle.arena.top+math.random(1,200))
            self:spawnBullet("poseur/chaserbullet", Game.battle.arena.right-math.random(1,200), Game.battle.arena.top+math.random(1,200))
            self:spawnBullet("poseur/chaserbullet", Game.battle.arena.right-math.random(1,200), Game.battle.arena.top+math.random(1,200))

    end)
end

function ChaserOrb:update()
    super.update(self)
    self.siner = self.siner + DT
    self:setArenaSize(150+math.sin(self.siner)*100)
end

return ChaserOrb
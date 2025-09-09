local Dummy, super = Class(Encounter)

function Dummy:init()
    super.init(self)

    -- Text displayed at the bottom of the screen at the start of the encounter
    self.text = [==[
* Darkness constricts you...
* ([color:yellow]TP[color:reset] Gain reduced outside of [color:green]???[color:reset])
]==]

    -- Battle music ("battle" is rude buster)
    self.music = "titan_battle"
    -- Enables the purple grid battle background
    self.background = false
    self.hide_world = false

    self.reduced_tension = true

    -- Add the dummy enemy to the encounter
    self.g = self:addEnemy("titan", 500, 350)

    --- Uncomment this line to add another!
    --self:addEnemy("dummy")
end

function Dummy:getPartyPosition(index)

    return 200 - index*40, 200 + index*30
end

function Dummy:onStateChange(old, new)
    if new == "DEFENDINGEND" then
        print("g")
        self.g.vulnturn = self.g.vulnturn - 1
    end

    if new == "ACTIONSELECT" and  self.g.vulnturn == 0 and self.g.vuln then
        self.g.shield.alpha = 0
        self.g.shield.visible = true
        self.g.vuln = false
        Game.battle.timer:tween(1, self.g.shield, {alpha = 1})
    end
end

function Dummy:onBattleInit()
    Game.battle:addChild(TitanDarknessControllerBattle())
end

return Dummy
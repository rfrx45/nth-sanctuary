local basesanctum_bg, super = Class(Event)

function basesanctum_bg:init(data)
    local map = Game.world.map
    function map:onEnter()
        Game.world:spawnObject(BaseSanctumBG(), "objects_bg")

    end
    super.init(self, data)
end

return basesanctum_bg
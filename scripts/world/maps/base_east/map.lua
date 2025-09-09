---@class Map.dark_place : Map
local map, super = Class(Map, "base_east")

function map:init(world, data)
    super.init(self, world, data)
    
end

function map:onEnter()
    local sa = self.world:getCharacter("jamm")
    if sa and not Game:getFlag("jamm_join") then
        sa:setSprite("landed_1")
    end
end

return map
---@class Actor.kris : Actor
local actor, super = Class("susie", true)

function actor:init()
    super.init(self)
    TableUtils.merge(self.animations, {
        ["pirouette"] = {"battle/pirouette", 3/30, true}
    })
    TableUtils.merge(self.offsets, {
        ["pirouette"] = {0, 0},
    })
end

return actor
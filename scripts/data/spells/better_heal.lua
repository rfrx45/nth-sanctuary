local spell, super = Class(Spell, "better_heal")

function spell:init()
    super.init(self)

    -- Display name
    self.name = "BetterHeal"
    -- Name displayed when cast (optional)
    self.cast_name = "BetterHeal"

    -- Battle description
    self.effect = "Heal\nally"
    -- Menu description
    self.description = "A healing spell that has grown\nwith practice and confidence."

    -- TP cost
    self.cost = 80

    -- Target mode (ally, party, enemy, enemies, or none)
    self.target = "ally"

    -- Tags that apply to this spell
    self.tags = {"heal"}
end

function spell:getTPCost(chara)
    local cost = super.getTPCost(self, chara)
    if chara and chara:getFlag("healUses") ~= nil then
		if chara:getFlag("healUses") == 0 then
			cost = 80
		elseif chara:getFlag("healUses") >= 1 and chara:getFlag("healUses") < 4 then
			cost = 79
		elseif chara:getFlag("healUses") >= 4 and chara:getFlag("healUses") < 7 then
			cost = 78
		elseif chara:getFlag("healUses") >= 7 and chara:getFlag("healUses") < 10 then
			cost = 77
		elseif chara:getFlag("healUses") >= 10 and chara:getFlag("healUses") < 13 then
			cost = 76
		elseif chara:getFlag("healUses") >= 13 then
			cost = 75
		end
    end
    return cost
end

function spell:onCast(user, target)
	user.chara:setFlag("healUses", user.chara:getFlag("healUses", 0) + 1)
	if user.chara:getFlag("healUses") > 15 then
		user.chara:setFlag("healUses", 15)
	end
    local base_heal = math.ceil(user.chara:getStat("magic") * 7 + 15 + (2 * user.chara:getFlag("healUses", 0)))
    local heal_amount = Game.battle:applyHealBonuses(base_heal, user.chara)

    target:heal(heal_amount)
end

return spell
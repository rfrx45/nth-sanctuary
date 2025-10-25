local item, super = Class(Item, "sound_stone")

function item:init()
    super.init(self)

    -- Display name
    self.name = "Sound Stone"
    -- Name displayed when used in battle (optional)
    self.use_name = nil

    -- Item type (item, key, weapon, armor)
    self.type = "key"
    -- Item icon (for equipment)
    self.icon = nil

    -- Battle description
    self.effect = ""
    -- Shop description
    self.shop = ""
    -- Menu description
    self.description = "A stone said to hold Your Sanctuary melodies.\nBut you aren't psychic, so it's useless...?"

    -- Default shop price (sell price is halved)
    self.price = 0
    -- Whether the item can be sold
    self.can_sell = false

    -- Consumable target mode (ally, party, enemy, enemies, or none)
    self.target = "none"
    -- Where this item can be used (world, battle, all, or none)
    self.usable_in = "world"
    -- Item this item will get turned into when consumed
    self.result_item = nil
    -- Will this item be instantly consumed in battles?
    self.instant = false

    -- Equip bonuses (for weapons and armor)
    self.bonuses = {}
    -- Bonus name and icon (displayed in equip menu)
    self.bonus_name = nil
    self.bonus_icon = nil

    -- Equippable characters (default true for armors, false for weapons)
    self.can_equip = {}

    -- Character reactions (key = party member id)
    self.reactions = {}
end

function item:onWorldUse()
	if MathUtils.randomInt(256) == 0 then
		Game.world:startCutscene(function(cutscene)
			cutscene:text("* You put the Sound Stone to your head and concentrated.", nil, nil, {auto = true})
			Game.world.music:pause()
			Assets.playSound("soundstone_creepy")
			local bg_cols_1 = Sprite("ui/sound_stone_colors/bg", 0, 0)
			bg_cols_1:setParallax(0,0)
			bg_cols_1:setLayer(WORLD_LAYERS["ui"])
			bg_cols_1:play(1/15, true)
			bg_cols_1:setScale(20, 20)
			local bg_cols_2 = Sprite("ui/sound_stone_colors/bg", 320, 0)
			bg_cols_2:setOrigin(1, 0)
			bg_cols_2:setParallax(0,0)
			bg_cols_2:setLayer(WORLD_LAYERS["ui"])
			bg_cols_2:play(1/15, true)
			bg_cols_2:setScale(-20, 20)
			local bg_cols_3 = Sprite("ui/sound_stone_colors/bg", 0, 240)
			bg_cols_3:setOrigin(0, 1)
			bg_cols_3:setParallax(0,0)
			bg_cols_3:setLayer(WORLD_LAYERS["ui"])
			bg_cols_3:play(1/15, true)
			bg_cols_3:setScale(20, -20)
			local bg_cols_4 = Sprite("ui/sound_stone_colors/bg", 320, 240)
			bg_cols_4:setOrigin(1, 1)
			bg_cols_4:setParallax(0,0)
			bg_cols_4:setLayer(WORLD_LAYERS["ui"])
			bg_cols_4:play(1/15, true)
			bg_cols_4:setScale(-20, -20)
			local bg = Sprite("ui/sound_stone_bg", 0, 0)
			bg.wrap_texture_x = true
			bg.wrap_texture_y = true
			bg:setParallax(0,0)
			bg:setLayer(WORLD_LAYERS["ui"]+0.5)
			bg:setScale(2, 2)
            local bg_text = Text("[shake:1]https://nth-sanctum.neocities.org/", 0, 240-16, 640, 480,
            { align = "center", font = "ebtitle", color = ColorUtils.hexToRGB("#40b038") })
            bg_text:setLayer(WORLD_LAYERS["ui"]+1)
			bg_text:setParallax(0,0)
			bg_text:addFX(OutlineFX(ColorUtils.hexToRGB("#284820"), { thickness = 2 }), "outline")
			Game.world:addChild(bg_cols_1)
			Game.world:addChild(bg_cols_2)
			Game.world:addChild(bg_cols_3)
			Game.world:addChild(bg_cols_4)
			Game.world:addChild(bg)
			Game.world:addChild(bg_text)
			cutscene:wait(2)
			bg_cols_1:remove()
			bg_cols_2:remove()
			bg_cols_3:remove()
			bg_cols_4:remove()
			bg:remove()
			bg_text:remove()
			cutscene:text("* ...")
			cutscene:text("* No problem here.")
			Game.world.music:play()
		end)
	else
		Game.world:showText("* You put the Sound Stone to your head and concentrated.[wait:5]\n* But nothing happened.")
	end
end

return item
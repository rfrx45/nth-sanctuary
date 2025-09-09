return {
    susie_punch = function(cutscene, battler, enemy)
        -- Open textbox and wait for completion
        cutscene:text("* Susie threw a punch at\nthe dummy.")

        -- Hurt the target enemy for 1 damage
        Assets.playSound("damage")
        enemy:hurt(1, battler)
        -- Wait 1 second
        cutscene:wait(1)

        -- Susie text
        cutscene:text("* You,[wait:5] uh,[wait:5] look like a weenie.[wait:5]\n* I don't like beating up\npeople like that.", "nervous_side", "susie")

        if cutscene:getCharacter("ralsei") then
            -- Ralsei text, if he's in the party
            cutscene:text("* Aww,[wait:5] Susie!", "blush_pleased", "ralsei")
        end
    end,
    unleash = function(cutscene, battler, enemy)
        cutscene:text("* Your soul unleashed light!")
        local burst = HeartBurst(battler.x-25, battler.y-50, COLORS.red)
        burst:setScale(3)
        Game.battle:addChild(burst)
        Assets.playSound("snd_great_shine", 1, 0.8)
        cutscene:fadeOut(0.5, {color = COLORS.white})
        cutscene:wait(0.49)
        cutscene:fadeIn(1, {color = COLORS.white})
        cutscene:wait(1)
        

       Assets.playSound("deathnoise")

       local sprite = enemy.shield
       sprite.visible = false
       local death_x, death_y = 204, -46
       local death = FatalEffect2(sprite:getTexture(), death_x, death_y, function() end)
       death:setColor(sprite:getDrawColor())
       death:setScale(2)
       Game.battle:addChild(death)
       cutscene:wait(1)
       enemy.vuln = true
       enemy.vulnturn = 2
    end
}
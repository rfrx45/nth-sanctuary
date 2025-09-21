return {
    door = function (cutscene)
        local man = cutscene:getCharacter("lobbyman")
        Assets.playSound("snd_mysterygo")
        Game.world.timer:tween(0.75, man, {alpha = 0, scale_x = 1, scale_y = 3}, 'out-circ')
        cutscene:wait(1)
        man:remove()
    end,
}

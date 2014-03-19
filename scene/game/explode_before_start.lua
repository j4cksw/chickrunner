explode_before_start = {}

start_game = start_game or require("scene.game.start_game")

function explode_before_start.evaluate()
  Runtime:removeEventListener("tap", explode_before_start.evaluate)
  audio.play(box_explosion_sound, {onComplete=start_game.evaluate})
  chick:setSequence("run")
  chick:play()
end

return explode_before_start
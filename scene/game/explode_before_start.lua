explode_before_start = {}

start_game = start_game or require("scene.game.start_game")

function explode_before_start.evaluate()
  Runtime:removeEventListener("tap", explode_before_start.evaluate)
  audio.play(box_explosion_sound, {channel=3})
  chick:setSequence("run")
  chick:play()
  timer.performWithDelay(100, start_game.evaluate)
end

return explode_before_start
explode_before_start = {}

start_game = start_game or require("scene.game.start_game")
destroy_all_obstacles = destroy_all_obstacles or require("scene.game.obstacle.destroy_all_obstacles")

function explode_before_start.evaluate()
  Runtime:removeEventListener("tap", explode_before_start.evaluate)
  audio.play(box_explosion_sound, {channel=3})
  destroy_all_obstacles.evaluate()
  chick:setSequence("run")
  chick:play()
  timer.performWithDelay(100, start_game.evaluate)
end

return explode_before_start
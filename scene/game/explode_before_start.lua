explode_before_start = {}

start_game = start_game or require("scene.game.start_game")
destroy_all_obstacles = destroy_all_obstacles or require("scene.game.obstacle.destroy_all_obstacles")
remove_obstacles = remove_obstacles or require("scene.game.obstacle.remove_obstacles")
hide_ads = hide_ads or require("common.ads.hide_ads")

function explode_before_start.evaluate()
  hide_ads.evaluate()
  display.remove(ready_state_ui_group)
  audio.stop({channel=4})
  audio.stop({channel=7})
  audio.play(box_explosion_sound, {channel=3})
  destroy_all_obstacles.evaluate()
  remove_obstacles.evaluate()
  chick:setSequence("run")
  chick:play()
  timer.performWithDelay(100, start_game.evaluate)
end

return explode_before_start
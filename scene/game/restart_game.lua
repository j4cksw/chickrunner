restart_game = {}

storyboard = storyboard or require("storyboard")
remove_obstacles = remove_obstacles or require("scene.game.obstacle.remove_obstacles")
hide_ads = hide_ads or require("common.ads.hide_ads")
initialize_chick = initialize_chick or require("scene.initialize_chick")

function restart_game.evaluate()
  print("Restarting.")
  hide_ads.evaluate()
  Runtime:removeEventListener("tap", restart_game.evaluate)
  display.remove(chick)
  remove_obstacles.evaluate()
  storyboard.reloadScene()
  display.remove(gameover_ui_group)
  initialize_chick.evaluate()
  pedal_image = nil
end

return restart_game
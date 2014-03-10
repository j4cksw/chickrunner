restart_game = {}

storyboard = storyboard or require("storyboard")
remove_obstacles = remove_obstacles or require("scene.game.obstacle.remove_obstacles")

function restart_game.evaluate()
  print("Restarting.")
  Runtime:removeEventListener("tap", restart_game.evaluate)
  display.remove(chick)
  remove_obstacles.evaluate()
  storyboard.reloadScene()
end

return restart_game
restart_game = {}

storyboard = storyboard or require("storyboard")

function restart_game.evaluate()
  print("Restarting.")
  Runtime:removeEventListener("tap", restart_game.evaluate)
  display.remove(chick)
  storyboard.reloadScene()
end

return restart_game
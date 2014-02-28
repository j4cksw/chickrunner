restart_game = {}

storyboard = storyboard or require("storyboard")

function restart_game.evaluate()
  storyboard.reloadScene()
end

return restart_game
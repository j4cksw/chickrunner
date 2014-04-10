move_obstacle = {}

game_scene_config = game_scene_config or require("config.game_scene_config")

function move_obstacle.evaluate(obstacle)
  local i
  for i=1, obstacle.numChildren do
      obstacle[i].x = obstacle[i].x - game_scene_config.game_speed
  end
end

return move_obstacle
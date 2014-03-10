move_obstacle = {}

game_scene_config = game_scene_config or require("config.game_scene_config")

function move_obstacle.evaluate(obstacle)
  for key, row in pairs(obstacle) do
    for  key, element in pairs(row) do
      element.x = element.x - game_scene_config.game_speed
    end
  end
end

return move_obstacle
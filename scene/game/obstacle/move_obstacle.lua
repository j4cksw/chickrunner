move_obstacle = {}

game_scene_config = game_scene_config or require("config.game_scene_config")
generate_obstacle = generate_obstacle or require("scene.game.obstacle.generate_obstacle")

function move_obstacle.evaluate(obstacle)
  print("Obstacle width="..obstacle.contentWidth)
  print("Obstacle x="..obstacle.x)
  local i
  for i=1, obstacle.numChildren do
      obstacle[i].x = obstacle[i].x - game_scene_config.game_speed
  end
end

return move_obstacle
generate_obstacle_space = {}

game_scene_config = game_scene_config or require("config.game_scene_config")

function generate_obstacle_space.evaluate()
  local obstacle_space = display.newRect(0, 0, 128, 128)
  obstacle_space.alpha = game_scene_config.obstacle_space_alpha
  obstacle_space.type = "space"  
  return obstacle_space
end

return generate_obstacle_space
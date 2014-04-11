check_next_obstacle_group = {}

get_last_obstacle_horizontal_position = get_last_obstacle_horizontal_position or require("scene.game.obstacle.get_last_obstacle_horizontal_position")
generate_random_obstacle = generate_random_obstacle or require("scene.game.obstacle.generate_random_obstacle")
game_scene_config = game_scene_config or require("config.game_scene_config")

function check_next_obstacle_group.evaluate()
  local last_element_position = get_last_obstacle_horizontal_position.evaluate()
  if last_element_position <= game_scene_config.generate_obstacle_position then
    generate_random_obstacle.evaluate()
  end
end

return check_next_obstacle_group
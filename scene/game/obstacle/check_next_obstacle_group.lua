check_next_obstacle_group = {}

get_last_obstacle_horizontal_position = get_last_obstacle_horizontal_position or require("scene.game.obstacle.get_last_obstacle_horizontal_position")
generate_random_obstacle = generate_random_obstacle or require("scene.game.obstacle.generate_random_obstacle")

function check_next_obstacle_group.evaluate()
  local last_element_position = get_last_obstacle_horizontal_position.evaluate()
  if last_element_position <= display.viewableContentWidth then
    generate_random_obstacle.evaluate()
  end
end

return check_next_obstacle_group
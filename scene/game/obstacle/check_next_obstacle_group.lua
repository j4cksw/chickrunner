check_next_obstacle_group = {}

get_last_obstacle_horizontal_position = get_last_obstacle_horizontal_position or require("scene.game.obstacle.get_last_obstacle_horizontal_position")

function check_next_obstacle_group.evaluate()
  get_last_obstacle_horizontal_position.evaluate()
end

return check_next_obstacle_group
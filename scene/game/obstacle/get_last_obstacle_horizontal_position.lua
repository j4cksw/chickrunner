get_last_obstacle_horizontal_position = {}
obstacle_queue = obstacle_queue or require("scene.game.obstacle.obstacle_queue")

function get_last_obstacle_horizontal_position.evaluate()
  local last_obstacle = obstacle_queue[#obstacle_queue]
  local last_obstacle_element = last_obstacle[last_obstacle.numChildren]
  return (last_obstacle_element.x + (last_obstacle_element.contentWidth/2))
end

return get_last_obstacle_horizontal_position
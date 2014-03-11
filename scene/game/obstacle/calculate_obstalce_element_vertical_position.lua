calculate_obstacle_element_vertical_position = {}

get_ground_vertical_position = get_ground_vertical_position or require("ground.get_ground_vertical_position")

function calculate_obstacle_element_vertical_position.evaluate(row_index, obstacle_element)
  return get_ground_vertical_position.evaluate(obstacle_element) - ((obstacle_element.contentHeight)*(row_index-1))
end

return calculate_obstacle_element_vertical_position
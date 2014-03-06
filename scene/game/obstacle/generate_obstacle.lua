generate_obstacle = {}
generate_box = generate_box or require("scene.game.generate_box")
obstacle_pattern = obstacle_pattern or require("config.obstacle_pattern")
obstacle_queue = obstacle_queue or require("scene.game.obstacle.obstacle_queue")
set_obstacle_position = set_obstacle_position or require("scene.game.obstacle.set_obstacle_position")

function generate_obstacle.evaluate()
  local selected_pattern = obstacle_pattern[1]
  
  local obstacle = {}
  local obstacle_row
  local obstacle_element
  for row_index, pattern_row in pairs(selected_pattern) do
    obstacle_row = {}
    table.insert(obstacle, obstacle_row)
    for element_index, pattern_element in pairs(pattern_row) do      
      obstacle_element = generate_box.evaluate()
      set_obstacle_position.evaluate(row_index, element_index, obstacle_element)
      table.insert(obstacle_row, obstacle_element)
    end
  end
  table.insert(obstacle_queue, obstacle)
end

return generate_obstacle
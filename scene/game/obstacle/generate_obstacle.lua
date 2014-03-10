generate_obstacle = {}
generate_box = generate_box or require("scene.game.generate_box")
generate_obstacle_space = generate_obstacle_space or require("scene.game.obstacle.generate_obstacle_space") 
obstacle_pattern = obstacle_pattern or require("config.obstacle_pattern")
obstacle_queue = obstacle_queue or require("scene.game.obstacle.obstacle_queue")
set_obstacle_element_position = set_obstacle_element_position or require("scene.game.obstacle.set_obstacle_element_position")
insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")

function generate_obstacle.evaluate()
  local selected_pattern = obstacle_pattern[1]
  
  local obstacle = display.newGroup()
  local obstacle_element
  for row_index, pattern_row in pairs(selected_pattern) do
    
    for element_index, pattern_element in pairs(pattern_row) do      
      
      if pattern_element == "box" then
        obstacle_element = generate_box.evaluate()
      elseif pattern_element == "space" then
        obstacle_element = generate_obstacle_space.evaluate()
      end
      
      set_obstacle_element_position.evaluate(row_index, element_index, obstacle_element)
      obstacle:insert(obstacle_element)
    end
  end
  table.insert(obstacle_queue, obstacle)
  insert_to_current_view_group.evaluate(obstacle)
end

return generate_obstacle
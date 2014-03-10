calculate_obstacle_element_horizontal_position = {}

obstacle_queue = obstacle_queue or require("scene.game.obstacle.obstacle_queue")
game_scene_config = game_scene_config or require("config.game_scene_config")
get_last_obstacle_horizontal_position = get_last_obstacle_horizontal_position or require("scene.game.obstacle.get_last_obstacle_horizontal_position")

function calculate_obstacle_element_horizontal_position.evaluate(element_index, element_sprite)
  local obstacle_group_start
  if #obstacle_queue == 0 then
    obstacle_group_start = game_scene_config.obstacle_horizontal_start  
  else
    obstacle_group_start = get_last_obstacle_horizontal_position.evaluate()
  end
  
  return obstacle_group_start+(element_sprite.contentWidth/2)+(element_sprite.contentWidth*(element_index-1))
end

return calculate_obstacle_element_horizontal_position
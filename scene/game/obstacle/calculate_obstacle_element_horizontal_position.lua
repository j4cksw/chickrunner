calculate_obstacle_element_horizontal_position = {}

obstacle_queue = obstacle_queue or require("scene.game.obstacle.obstacle_queue")
game_scene_config = game_scene_config or require("config.game_scene_config")
get_last_obstacle_element_position = get_last_obstacle_element_position or require("scene.game.obstacle.get_last_obstacle_element_position")

function calculate_obstacle_element_horizontal_position.evaluate(element_index, element_sprite)
  if #obstacle_queue == 0 then
    return game_scene_config.obstacle_horizontal_start  
  else
    local last_obstacle_element_position = get_last_obstacle_element_position.evaluate()
    return last_obstacle_element_position+(element_sprite.contentWidth/2)
  end
end

return calculate_obstacle_element_horizontal_position
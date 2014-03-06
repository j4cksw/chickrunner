set_obstacle_element_position = {}
game_scene_config = game_scene_config or require("config.game_scene_config")
get_ground_vertical_position = get_ground_vertical_position or require("scene.get_ground_block_image_sheet")

function set_obstacle_element_position.evaluate(row_index, element_index, element_sprite)
  element_sprite.x = game_scene_config.obstacle_horizontal_start
  element_sprite.y = get_ground_vertical_position.evaluate(element_sprite)
end

return set_obstacle_element_position
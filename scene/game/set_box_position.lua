set_box_position = {}

game_scene_config = game_scene_config or require("config.game_scene_config")
get_ground_vertical_position = get_ground_vertical_position or require("scene.get_ground_block_image_sheet")

function set_box_position.evaluate(box_sprite)
  box_sprite.x = game_scene_config.box_horizontal_start
  box_sprite.y = get_ground_vertical_position.evaluate(box_sprite)
end

return set_box_position
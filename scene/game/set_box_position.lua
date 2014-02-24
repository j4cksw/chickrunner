set_box_position = {}

game_scene_config = game_scene_config or require("config.game_scene_config")

function set_box_position.evaluate(box_sprite)
  box_sprite.x = game_scene_config.box_horizontal_start
end

return set_box_position
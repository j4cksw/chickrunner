initialize_chick = {}

create_chick_sprite = create_chick_sprite or require("chick.create_chick_sprite")
game_scene_config = game_scene_config or require("config.game_scene_config")
get_ground_vertical_position = get_ground_vertical_position or require("ground.get_ground_vertical_position")

function initialize_chick.evaluate()
  local chick_sprite = create_chick_sprite.evaluate()
  
  chick_sprite.x = game_scene_config.chick_start
  chick_sprite.y = get_ground_vertical_position.evaluate(chick_sprite)
end

return initialize_chick
initialize_chick = {}

create_chick_sprite = create_chick_sprite or require("chick.create_chick_sprite")
game_scene_config = game_scene_config or require("config.game_scene_config")

function initialize_chick.evaluate()
  local chick_sprite = create_chick_sprite.evaluate()
  
  chick_sprite.x = game_scene_config.chick_start
end

return initialize_chick
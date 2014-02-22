initialize_chick = {}

create_chick_sprite = create_chick_sprite or require("chick.create_chick_sprite")
game_scene_config = game_scene_config or require("config.game_scene_config")
get_ground_vertical_position = get_ground_vertical_position or require("ground.get_ground_vertical_position")
chick_collision_listener = chick_collision_listener or require("scene.chick_collision_listener")

function initialize_chick.evaluate()
  chick = create_chick_sprite.evaluate()
  
  chick.x = game_scene_config.chick_start
  chick.y = get_ground_vertical_position.evaluate(chick)
  
  
end

return initialize_chick
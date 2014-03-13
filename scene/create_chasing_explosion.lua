create_chasing_explosion = {}

create_explosion_sprite = create_explosion_sprite or require("explosion.create_explosion_sprite")
game_scene_config = game_scene_config or require("config.game_scene_config")
get_ground_vertical_position = get_ground_vertical_position or require("ground.get_ground_vertical_position")
push_to_explosion_queue = push_to_explosion_queue or require("explosion.push_to_explosion_queue")

function create_chasing_explosion.evaluate()
  local explosion_sprite = create_explosion_sprite.evaluate()
  
  explosion_sprite.x = game_scene_config.chasing_explosion_start
  explosion_sprite.y = get_ground_vertical_position.evaluate(explosion_sprite)
  
  push_to_explosion_queue.evaluate(explosion_sprite)
end

return create_chasing_explosion
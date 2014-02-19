create_chasing_explosion = {}

create_explosion_sprite = create_explosion_sprite or require("explosion.create_explosion_sprite")
ground_config = ground_config or require("config.ground_config")

function create_chasing_explosion.evaluate()
  local explosion_sprite = create_explosion_sprite.evaluate()
  
  explosion_sprite.x = 192
  explosion_sprite.y = ground_config.vertical_start - (explosion_sprite.contentHeight/2)
end

return create_chasing_explosion
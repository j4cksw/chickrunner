create_chasing_explosion = {}

create_explosion_sprite = create_explosion_sprite or require("explosion.create_explosion_sprite")

function create_chasing_explosion.evaluate()
  local explosion_sprite = create_explosion_sprite.evaluate()
  
  explosion_sprite.x = 192
end

return create_chasing_explosion
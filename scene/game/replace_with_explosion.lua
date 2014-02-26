replace_with_explosion = {}

create_explosion_sprite = create_explosion_sprite or require("explosion.create_explosion_sprite")
get_ground_vertical_position = get_ground_vertical_position or require("ground.get_ground_vertical_explosion")

function replace_with_explosion.evaluate(target)
  local box_x = target.x
  local explosion_sprite = create_explosion_sprite.evaluate()
  
  explosion_sprite.x = box_x
  explosion_sprite.y = get_ground_vertical_position.evaluate(explosion_sprite)
  
  display.remove(target)
  table.remove(box_queue, 1)
end

return replace_with_explosion
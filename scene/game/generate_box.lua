generate_box = {}

create_box_sprite = create_box_sprite or require("box.create_box_sprite")
add_physics_body_to_box = add_physics_body_to_box or require("box.add_physics_body_to_box")
add_collision_listener_to_box = add_collision_listener_to_box or require("scene.game.add_collision_listener_to_box")

function generate_box.evaluate()
  local box_sprite = create_box_sprite.evaluate()
  add_physics_body_to_box.evaluate(box_sprite)
  add_collision_listener_to_box.evaluate(box_sprite)
  return box_sprite
end

return generate_box
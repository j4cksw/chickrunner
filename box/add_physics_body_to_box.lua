add_physics_body_to_box = {}

physics = physics or require("physics")

function add_physics_body_to_box.evaluate(box_sprite)
  physics.addBody(box_sprite, "static")
end

return add_physics_body_to_box
add_physics_body_to_box = {}

physics = physics or require("physics")
box_sprite_config = box_sprite_config or require("config.box_sprite_config")

function add_physics_body_to_box.evaluate(box_sprite)
  physics.addBody(box_sprite, "static",
   {shape={-64,-64,-64,64}},
    {shape={-50,-64,64,-64}})
end

return add_physics_body_to_box
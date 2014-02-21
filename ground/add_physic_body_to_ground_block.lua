add_physics_body_to_ground_block = {}

physics = physics or require("physics")
ground_block_sprite_config = ground_block_sprite_config or require("config.ground_block_sprite_config")

function add_physics_body_to_ground_block.evaluate(ground_block)
  physics.addBody(ground_block,
    "static")
end

return add_physics_body_to_ground_block
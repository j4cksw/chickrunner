add_physics_body_to_chick = {}

physics = physics or require("physics")
chick_sprite_config = chick_sprite_config or require("config.chick_sprite_config")

function add_physics_body_to_chick.evaluate(chick)
  physics.addBody(chick,
    "dynamic", 
    chick_sprite_config.physics_options
   )
  chick.isSleepingAllowed = false
end

return add_physics_body_to_chick
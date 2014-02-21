add_physics_body_to_chick = {}

physics = physics or require("physics")


function add_physics_body_to_chick.evaluate(chick)
  physics.addBody(chick,
    "dynamic", 
    {
      density=0.0
    }
   )
end

return add_physics_body_to_chick
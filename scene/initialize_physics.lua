initialize_physics = {}

physics = physics or require("physics")

function initialize_physics.evaluate()
  physics.setDrawMode("hybrid")
  physics.start()
  physics.setGravity(0, 40)
  
end

return initialize_physics
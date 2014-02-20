initialize_physics = {}

physics = physics or require("physics")

function initialize_physics.evaluate()
  physics.setDrawMode("hybrid")
  physics.setGravity(0, 40)
  physics.start()
end

return initialize_physics
initialize_physics = {}

physics = physics or require("physics")

function initialize_physics.evaluate()
  physics.setDrawMode("hybrid")
end

return initialize_physics
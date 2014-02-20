describe("initialize_physic", function()
  local initialize_physics
  
  setup(function()
    
    physics = {}
    stub(physics, "setDrawMode")
    
    initialize_physics = require("scene.initialize_physic")
  end)
  
  it("Set hybird physics mode", function()
    -- when
    initialize_physics.evaluate()
    -- then
    assert.stub(physics.setDrawMode).was_called_with("hybrid")
  end)
  it("Set gravity")
  it("Start physics")
end)
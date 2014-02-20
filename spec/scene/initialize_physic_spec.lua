describe("initialize_physic", function()
  local initialize_physics
  
  setup(function()
    
    physics = {}
    stub(physics, "setDrawMode")
    stub(physics, "setGravity")
    stub(physics, "start")
    
    initialize_physics = require("scene.initialize_physics")
  end)
  
  it("Set hybird physics mode", function()
    -- when
    initialize_physics.evaluate()
    -- then
    assert.stub(physics.setDrawMode).was_called_with("hybrid")
  end)
  
  it("Set gravity", function()
    -- when
    initialize_physics.evaluate()
    -- then
    assert.stub(physics.setGravity).was_called_with(0, 40)
  end)
  
  it("Start physics", function()
    -- when
    initialize_physics.evaluate()
    -- then
    assert.stub(physics.start).was_called()
  end)
end)
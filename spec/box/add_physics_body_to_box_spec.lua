describe("add_physics_body_to_box", function()
  local add_physics_body_to_box
  
  local box_sprite = {}
  
  local physics_options = {shape={-64,-64,-64,64}},
    {shape={-50,-64,64,-64}}
  
  setup(function()
    
    box_sprite_config = {
      physics_options
    }
    
    physics = {}
    stub(physics, "addBody") 
    
    add_physics_body_to_box = require("box.add_physics_body_to_box")
  end)
  
  it("Call physics.addBody with given box_sprite and proper arguments", function()
    -- when
    add_physics_body_to_box.evaluate(box_sprite)
    -- then
    assert.stub(physics.addBody).was_called_with(box_sprite, "static",
     {shape={-64,-50,-64,64}},
      {shape={-50,-64,64,-64}})
  end)
end)
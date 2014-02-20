describe("add_physic_body_to_ground_block", function()
  local add_physic_body_to_ground_block
  
  setup(function()
    physics = {}
    stub(physics, "addBody")
    
    add_physic_body_to_ground_block = require("ground.add_physic_body_to_ground_block")
  end)
  
  it("evaluate physics.addBody with proper arguments", function()
    -- given
    local ground_block = {}
    ground_block_sprite_config = {
      shape = {}
    }
    -- when
    add_physic_body_to_ground_block.evaluate(ground_block)
    -- then flore1,"static", {bounce=0.0, shape = floreShape}
    assert.stub(physics.addBody)
      .was_called_with(ground_block,
       "static",
       {shape=ground_block_sprite_config.shape})
  end)
end)
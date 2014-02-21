describe("add_physics_body_to_chick", function()
  local add_physics_body_to_chick
  
  setup(function()
  
    physics = {}
    stub(physics, "addBody")
  
    add_physics_body_to_chick = require("chick.add_physics_body_to_chick")
  end)
  
  it("Evaluate physics.addBody with proer parameters", function()
    -- given
    local chick_sprite = {}
    chick_sprite_config = {
      physics_options = {}
    }
    -- when
    add_physics_body_to_chick.evaluate(chick_sprite)
    -- then
    assert.stub(physics.addBody)
      .was_called_with(chick_sprite,
        "dynamic",
        chick_sprite_config.physics_options
      )
  end)
end)
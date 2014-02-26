describe("chick_ignite_sprite_listener", function()
  local chick_ignite_sprite_listener
  
  local event = {}
  
  setup(function()
    
    event = {
      phase = "ended"
    }
    
    chick_burn = {}
    stub(chick_burn, "evaluate")
    
    chick_ignite_sprite_listener = require("chick.chick_ignite_sprite_listener")
  end)
  
  it("When sprite animate ended, evaluate chick_burn", function()
    -- when
    chick_ignite_sprite_listener.evaluate(event)
    -- then
    assert.stub(chick_burn.evaluate).was_called()
  end)

end)
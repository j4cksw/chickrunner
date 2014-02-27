describe("chick_ignite_sprite_listener", function()
  local chick_ignite_sprite_listener
  
  local event = {}
  
  setup(function()
    
    event = {
      phase = "ended"
    }
    
    chick_burn = {}
    stub(chick_burn, "evaluate")
  
    chick = {}
    stub(chick, "removeEventListener")
        
    chick_ignite_sprite_listener = require("chick.chick_ignite_sprite_listener")
  end)
  
  it("When sprite animate ended, evaluate chick_burn", function()
    -- when
    chick_ignite_sprite_listener.evaluate(event)
    -- then
    assert.stub(chick_burn.evaluate).was_called()
  end)
  
  it("Remove itself from chick's sprite event listener", function()
    -- when
    chick_ignite_sprite_listener.evaluate(event)
    -- then
    assert.stub(chick.removeEventListener)
      .was_called_with(chick,
        "sprite",
        chick_ignite_sprite_listener.evaluate)
  end)

end)
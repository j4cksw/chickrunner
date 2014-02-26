describe("chick_ignite_sprite_listener", function()
  local chick_ignite_sprite_listener
  
  local event = {}
  
  setup(function()
    
    event = {
      phase = "ended"
    }
    
    chick = {}
    stub(chick, 'setSequence')
    stub(chick, "play")
    stub(chick, "addEventListener")  
    
    chick_ignite_sprite_listener = require("chick.chick_ignite_sprite_listener")
  end)
  
  it("When sprite animate ended, Set sequence to burn", function()
    -- when
    chick_ignite_sprite_listener.evaluate(event)
    -- then
    assert.stub(chick.setSequence).was_called_with(chick, "burn")
  end)
  
  it("When sprite animate ended, Set sequence to burn then play")
end)
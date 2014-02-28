describe("chick_dead_sprite_listener", function()
  local chick_dead_sprite_listener
  
  local event
  
  setup(function()
    
    event = {
      phase = "ended"
    }
    
    Runtime = {}
    stub(Runtime, "addEventListener")
    
    restart_game = {
      evaluate = function()end
    }
    
    chick_dead_sprite_listener = require("scene.game.chick_dead_sprite_listener")
  end)
  
  it("When animate ended, Add tap event listener to runtime", function()
    -- when
    chick_dead_sprite_listener.evaluate(event)
    -- then
    assert.stub(Runtime.addEventListener).was_called_with(Runtime, "tap", restart_game.evaluate)
  end)

end)
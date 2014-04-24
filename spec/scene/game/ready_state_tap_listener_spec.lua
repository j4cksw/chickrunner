describe("ready_state_tap_listener", function()
  local ready_state_tap_listener
  
  local event = {}
  
  setup(function()
    Runtime = {}
    stub(Runtime, "removeEventListener")
    
    explode_before_start = {}
    stub(explode_before_start, "evaluate")
    
    ready_state_tap_listener = require("scene.game.ready_state_tap_listener")
  end)
  
  it("should evaluate explode_before_start", function()
    ready_state_tap_listener.evaluate(event)
    
    assert.stub(explode_before_start.evaluate).was_called()
  end)
  
  it("should remove itself from tap event listener", function()
    ready_state_tap_listener.evaluate(event)
    
    assert.stub(Runtime.removeEventListener).was_called_with(Runtime, ready_state_tap_listener.evaluate)
  end)
end)
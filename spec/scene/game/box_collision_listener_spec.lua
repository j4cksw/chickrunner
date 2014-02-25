describe("box_collision_listener", function()
  local box_collision_listener
  
  local event
  setup(function()
  
    event = {
      phase = "began",
      other = {
        type = "chick"
      }
    }
    
    Runtime = {}
    stub(Runtime, "removeEventListener")
    
    update_stage = {
      evaluate = function()end
    }
  
    box_collision_listener = require("scene.game.box_collision_listener")
  end)
  
  it("Remove enterFrame event", function()
    -- when
    box_collision_listener.evaluate(event)
    -- then
    assert.stub(Runtime.removeEventListener)
      .was_called_with(Runtime,
        "enterFrame",
         update_stage.evaluate)
  end)
  
  it("Stop chasing explosion timer")
  
end)
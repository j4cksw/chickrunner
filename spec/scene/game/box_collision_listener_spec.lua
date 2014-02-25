describe("box_collision_listener", function()
  local box_collision_listener
  
  local event
  
  local target = { }
  
  setup(function()
  
    event = {
      phase = "began",
      other = {
        type = "chick"
      },
      target = target
    }
    
    Runtime = {}
    stub(Runtime, "removeEventListener")
    
    update_stage = {
      evaluate = function()end
    }
    
    explosion_timer = {}
    
    timer = {}
    stub(timer, "cancel")
    
    replace_with_explosion = {}
    stub(replace_with_explosion, "evaluate")
  
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
  
  it("Cancel chasing explosion timer", function()
    -- when
    box_collision_listener.evaluate(event)
    -- then
    assert.stub(timer.cancel).was_called_with(explosion_timer)
  end)
  
  it("Evaluate replace_with_explosion", function()
    -- when
    box_collision_listener.evaluate(event)
    -- then
    assert.stub(replace_with_explosion.evaluate).was_called_with(event.target)
  end)
  
  
end)
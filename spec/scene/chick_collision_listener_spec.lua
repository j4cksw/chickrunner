describe("chick_collision_listener", function()
  local chick_collision_listener
  
  local event = {
    phase = "began",
    other = {
      type = "ground"
    },
    otherElement = 1
  }
  
  local landing_condition_result = true
  
  setup(function()
    chick = {}
    stub(chick, "setSequence")
    stub(chick, "play")
    stub(chick, "removeEventListener")
    
    check_chick_landing_condition = {
      evaluate = function()
        return landing_condition_result
      end
    }
    spy.on(check_chick_landing_condition, "evaluate")
    
    chick_landing = {}
    stub(chick_landing, "evaluate")
  
    chick_collision_listener = require("scene.chick_collision_listener")
  end)
  
  it("Evaluate check_chick_landing_condition", function()
    -- when
    chick_collision_listener.evaluate(event)
    -- then
    assert.stub(check_chick_landing_condition.evaluate).was_called_with(event)
  end)
  
  it("Set chick sequence to 'run'", function()
    -- when
    chick_collision_listener.evaluate(event)
    -- then
    assert.stub(chick.setSequence).was_called_with(chick, 'run')
  end)
  
  it("Play chick", function()
    -- when
    chick_collision_listener.evaluate(event)
    -- then
    assert.stub(chick.play).was_called_with(chick)
  end)
end)
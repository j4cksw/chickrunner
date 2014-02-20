describe("start_chasing_explosion_timer", function()
  local start_chasing_explosion_timer
  
  setup(function()
    chasing_explosion_timer_listener = {
      evaluate = function() end
    }
    
    timer = {
      performWithDelay = function()end
    }
    spy.on(timer, "performWithDelay")
    
    game_scene_config = { explosion_delay = 100 }
    
    start_chasing_explosion_timer = require("scene.start_chasing_explosion_timer")
  end)
  
  it("Evaluate timer.performWithDelay with proper arguments", function()
    -- when
    start_chasing_explosion_timer.evaluate()
    -- then
    assert.stub(timer.performWithDelay).was_called_with(100,
     chasing_explosion_timer_listener.evaluate)
  end)
end)
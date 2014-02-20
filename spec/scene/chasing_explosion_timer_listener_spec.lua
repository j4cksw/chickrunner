describe("chasing_explosion_timer_listener", function()
  local chasing_explosion_timer_listener
  
  setup(function()
    create_chasing_explosion = {}
    stub(create_chasing_explosion, "evaluate")
    
    start_chasing_explosion_timer = {}
    stub(start_chasing_explosion_timer, "evaluate")
  
    chasing_explosion_timer_listener = require("scene.chasing_explosion_timer_listener")
  end)
  
  it("Evaluate create_chasing_explosion", function()
    -- when
    chasing_explosion_timer_listener.evaluate()
    -- then
    assert.stub(create_chasing_explosion.evaluate).was_called()
  end)
  
  it("Evalaute start_chasing_explosion_timer", function()
    -- when
    chasing_explosion_timer_listener.evaluate()
    -- then
    assert.stub(start_chasing_explosion_timer.evaluate).was_called()
  end)
end)
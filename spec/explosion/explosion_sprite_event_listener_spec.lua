describe("explosion_sprite_event_listener", function()
  local explosion_sprite_event_listener
  
  local target = {}
  local event = { 
    phase = "ended",
    target=target
  }
    
  setup(function()
  
    display = {}
    stub(display, "remove")
  
    explosion_sprite_event_listener = require("explosion.explosion_sprite_event_listener")
  end)
  
  it("When animate ended .Evaluate display.remove with first explosion sprite in queue", function()
    -- when
    explosion_sprite_event_listener.evaluate(event)
    -- then
    assert.stub(display.remove).was_called_with(target)
  end)
  
  it("Remove first element in explosion_queue", function()
    -- given
    local explosion_1 = {}
    local explosion_2 = {}
    explosion_queue = { explosion_1, explosion_2}
    -- when
    explosion_sprite_event_listener.evaluate(event)
    -- then
    assert.are_not.equal(explosion_1, explosion_queue[1])
  end)
end)
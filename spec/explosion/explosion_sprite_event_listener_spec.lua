describe("explosion_sprite_event_listener", function()
  local explosion_sprite_event_listener
  
  setup(function()
  
    display = {}
    stub(display, "remove")
  
    explosion_sprite_event_listener = require("explosion.explosion_sprite_event_listener")
  end)
  
  it("When animate ended .Evaluate display.remove with first explosion sprite in queue", function()
    -- given
    local target = {}
    local event = { 
      phase = "ended",
      target=target}
    -- when
    explosion_sprite_event_listener.evaluate(event)
    -- then
    assert.stub(display.remove).was_called_with(target)
  end)
  
  it("Remove first element in explosion_queue")
end)
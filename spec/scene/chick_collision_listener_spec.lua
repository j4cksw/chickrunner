describe("chick_collision_listener", function()
  local chick_collision_listener
  
  local event = {
    phase = "began"
  }
  
  setup(function()
    chick = {}
    stub(chick, "setSequence")
    stub(chick, "play")
    stub(chick, "removeEventListener")
  
    chick_collision_listener = require("scene.chick_collision_listener")
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
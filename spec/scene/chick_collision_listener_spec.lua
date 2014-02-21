describe("chick_collision_listener", function()
  local chick_collision_listener
  
  setup(function()
    chick = {}
    stub(chick, "setSequence")
  
    chick_collision_listener = require("scene.chick_collision_listener")
  end)
  
  it("Set chick sequence to 'normal'", function()
    -- when
    chick_collision_listener.evaluate()
    -- then
    assert.stub(chick.setSequence).was_called_with(chick, 'normal')
  end)
  
  it("Play chick")
end)
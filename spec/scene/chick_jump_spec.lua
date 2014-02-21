describe("chick_jump", function()
  local chick_jump
  
  setup(function()
    chick = {}
    stub(chick, "setLinearVelocity")
    chick_jump = require("scene.chick_jump")
  end)
  
  it("Set linerVelocity to chick_sprite", function()
    -- when
    chick_jump.evaluate()
    -- then
    assert.stub(chick.setLinearVelocity).was_called_with(0, -800)
  end)
end)
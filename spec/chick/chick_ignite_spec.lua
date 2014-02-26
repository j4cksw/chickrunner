describe("chick_ignite", function()
  local chick_ignite
  
  setup(function()
    chick = {}
    stub(chick, 'setSequence')
  
    chick_ignite = require("chick.chick_ignite")
  end)
  
  it("Set chick sequence to ignite", function()
    -- when
    chick_ignite.evaluate()
    -- then
    assert.stub(chick.setSequence).was_called_with(chick, 'ignite')
  end)
  
  it("Play chick sprite")
  
  it("Set chick_ignite_sprite_listener to sprite event listener")
end)
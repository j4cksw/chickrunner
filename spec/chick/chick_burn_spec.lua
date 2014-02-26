describe("chick_burn", function()
  local chick_burn
  
  setup(function()
    chick = {}
    stub(chick, 'setSequence')
    stub(chick, "play")
    stub(chick, "addEventListener") 
    
    chick_burn = require("chick.chick_burn")
  end)
  
  it("Set chick sequence to burn", function()
    -- when
    chick_burn.evaluate(event)
    -- then
    assert.stub(chick.setSequence).was_called_with(chick, "burn")
  end)
  
  it("Set chick sequence to burn then play", function()
    -- when
    chick_burn.evaluate(event)
    -- then
    assert.stub(chick.play).was_called_with(chick)
  end)
end)
describe("explode_before_start", function()
  local explode_before_start
  
  setup(function()
    Runtime = {}
    stub(Runtime, "removeEventListener")
    
    explode_before_start = require("scene.game.explode_before_start")
  end)
  
  it("Remove tap event listener", function()
    -- when
   explode_before_start.evaluate()
   -- then
   assert.stub(Runtime.removeEventListener).was_called_with(Runtime, "tap", explode_before_start.evaluate)
  end)
  
  it("Play audio and add start_game to oncomplete")
  
end)
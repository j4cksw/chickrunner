describe("restart_game", function()
  local restart_game
  
  setup(function()
  
    storyboard = {}
    stub(storyboard, "reloadScene")
  
    restart_game = require("scene.game.restart_game")
  end)
  
  it("Evalaute storyboard.reloadScene", function()
    -- when
    restart_game.evaluate()
    -- then
    assert.stub(storyboard.reloadScene).was_called()
  end)
end)
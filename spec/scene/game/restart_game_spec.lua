describe("restart_game", function()
  local restart_game
  
  setup(function()
  
    storyboard = {}
    stub(storyboard, "reloadScene")
    
    remove_obstacles = {}
    stub(remove_obstacles, "evaluate")
    
    Runtime = {}
    stub(Runtime, "removeEventListener")
  
    restart_game = require("scene.game.restart_game")
  end)
  
  it("Remove tap event listener from runtime", function()
    -- when
    restart_game.evaluate()
    -- then
    assert.stub(Runtime.removeEventListener).was_called_with(Runtime, "tap", restart_game.evaluate)
  end)
  
  it("Remove chick sprite", function()
    -- when
    restart_game.evaluate()
    -- then
    assert.stub(display.remove).was_called_with(chick)
  end)
  
  it("Evalaute storyboard.reloadScene", function()
    -- when
    restart_game.evaluate()
    -- then
    assert.stub(storyboard.reloadScene).was_called()
  end)
  
  it("Evalaute remove_obstacles", function()
    -- when
    restart_game.evaluate()
    -- then
    assert.stub(remove_obstacles.evaluate).was_called()
  end)
end)
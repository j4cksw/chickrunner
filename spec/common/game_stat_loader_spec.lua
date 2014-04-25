describe("game_stat_loader", function()
  local game_stat_loader
  
  setup(function()
    file_loader = {}
    stub(file_loader, "load")
    
    game_stat_loader = require("common.game_stat_loader")
  end)
  
  it("should load content from stat file", function()
    game_stat_loader.load()
    
    assert.stub(file_loader.load).was_called_with("game_stat")
  end)
end)
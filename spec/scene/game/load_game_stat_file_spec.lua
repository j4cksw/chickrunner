describe("load_game_stat_file", function()
  local load_game_stat_file
  
  setup(function()
    system = {
      pathForFile = function ( ... )
        return fakeHighscorePath
      end,
      DocumentsDirectory = "fakeDocumentDir"
    }
    spy.on(system, "pathForFile")
    
    load_game_stat_file = require("scene.game.load_game_stat_file")
  end)
  
  it("Acquire path of highscore file", function ( ... )
    -- when
    load_game_stat_file.evaluate()
    -- then
    assert.stub(system.pathForFile).was_called_with("game_stat", system.DocumentsDirectory)
  end)
end)

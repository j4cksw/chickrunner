describe("load_game_stat_file", function()
  local load_game_stat_file
  
  local fake_game_stat_path
  local fake_game_stat_file
  
  local expectedResult = {}

  json = {
    decode = function ( ... )
      return expectedResult
    end
  }
  
  setup(function()
    system = {
      pathForFile = function ( ... )
        return fake_game_stat_path
      end,
      DocumentsDirectory = "fakeDocumentDir"
    }
    spy.on(system, "pathForFile")
    
    io.open = function ( ... )
      return fake_game_stat_file
    end
    spy.on(io, "open")
    stub(io, "close")
    
    load_game_stat_file = require("scene.game.load_game_stat_file")
  end)
  
  it("Acquire path of highscore file", function ( ... )
    -- when
    load_game_stat_file.evaluate()
    -- then
    assert.stub(system.pathForFile).was_called_with("game_stat", system.DocumentsDirectory)
  end)
  
  it("Open file", function ( ... )
    -- when
    load_game_stat_file.evaluate()
    -- then
    assert.stub(io.open).was_called_with(fake_game_stat_path, "r")
  end)
end)

describe("load_game_stat_file", function()
  local load_game_stat_file
  
  local fake_content = "..."
  local fake_game_stat_path = "path/to/game_stat"
  local fake_game_stat_file = {
    read = function ( ... )
      return fake_content
    end
  }
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
    
    spy.on(fake_game_stat_file, "read")
    
    spy.on(json, "decode")
    
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
  
  it("If file availables then read", function ( ... )
    -- when
    load_game_stat_file.evaluate()
    -- then
    assert.stub(fake_game_stat_file.read).was_called_with(fake_game_stat_file, "*a")
  end)
  
  it("If file available decode after read", function ( ... )
    -- when
    load_game_stat_file.evaluate()
    -- then
    assert.stub(json.decode).was_called_with(fake_content)
  end)
  
  it("If file available close file after decoded", function ( ... )
    -- when
    load_game_stat_file.evaluate()
    -- then
    assert.stub(io.close).was_called_with(fake_game_stat_file)
  end)
  
  it("If file available return game_stat table", function ( ... )
    -- when
    local result = load_game_stat_file.evaluate()
    -- then
    assert.are.equal(expectedResult, result)
  end)
  
end)

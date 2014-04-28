describe("load_file", function()
  local file_loader
  
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
    
    file_loader = require("common.file_loader")
  end)
  
  it("Acquire path of highscore file", function ( ... )
    file_loader.load("game_stat")
    
    assert.stub(system.pathForFile).was_called_with("game_stat", system.DocumentsDirectory)
  end)
  
  it("Open file", function ( ... )
    file_loader.load("game_stat")
    
    assert.stub(io.open).was_called_with(fake_game_stat_path, "r")
  end)
  
  it("If file availables then read", function ( ... )
    file_loader.load("game_stat")
    
    assert.stub(fake_game_stat_file.read).was_called_with(fake_game_stat_file, "*a")
  end)
  
  it("If file available decode after read", function ( ... )
    file_loader.load("game_stat")
    
    assert.stub(json.decode).was_called_with(fake_content)
  end)
  
  it("If file available close file after decoded", function ( ... )
    file_loader.load("game_stat")
    
    assert.stub(io.close).was_called_with(fake_game_stat_file)
  end)
  
  it("If file available return game_stat table", function ( ... )
    local result = file_loader.load("game_stat")
    
    assert.are.same(expectedResult, result)
  end)
  
  it("Error if no highscore file available", function ( ... )
    fake_game_stat_file = nil
    
    assert.has_error(file_loader.load, "File not found")
  end)
end)
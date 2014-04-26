describe("file_saver", function()
  local file_saver

   local fakeFile = {
    write = function ( ... )
    -- body
    end
  }

  local expectedResult = "..."

  setup(function()
    game_stat = {}
  
    system = {
      pathForFile = function ( ... )
        return fakeHighscorePath
      end,
      DocumentsDirectory = "fakeDocumentDir"
    }
    spy.on(system, "pathForFile")

    io.open = function ( ... )
      return fakeFile
    end
    spy.on(io, "open")
    stub(io, "close")

    json = {
      encode = function ( ... )
        return expectedResult
      end
    }
    spy.on(json, "encode")

    stub(fakeFile, "write")

    file_saver = require("common.file_saver")
  end)

  it("should acquire path of highscore file", function ( ... )
    file_saver.save("game_stat", game_stat)
    
    assert.stub(system.pathForFile).was_called_with("game_stat", system.DocumentsDirectory)
  end)

  it("should open file", function ( ... )
    file_saver.save("game_stat", game_stat)
    
    assert.stub(io.open).was_called_with("path/to/game_stat", "w")
  end)

  it("should encode to json if file is available", function ( ... )
    file_saver.save("game_stat", game_stat)
    
    assert.stub(json.encode).was_called_with(game_stat)
  end)

  it("should write encoded json to file if file is available", function ( ... )
    file_saver.save("game_stat", game_stat)
   
    assert.stub(fakeFile.write).was_called_with(fakeFile, expectedResult)
  end)


  it("should close file", function ( ... )
    file_saver.save("game_stat", game_stat)
    
    assert.stub(io.close).was_called_with(fakeFile)
  end)

  it("should throw error if no highscore file available", function ( ... )
    fakeFile = nil
    
    assert.has_error(file_saver.evaluate, "Cannot save to file")
  end)
end)
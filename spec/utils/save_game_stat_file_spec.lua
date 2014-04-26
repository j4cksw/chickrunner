describe("save_game_stat_file", function()
  local save_game_stat_file

  local filename = "game_stat"

  local fakeHighscorePath = "path/to/game_stat"

  local fakeFile = {
    write = function ( ... )end
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

    save_game_stat_file = require("utils.save_game_stat_file")
  end)

  it("Acquire path of highscore file", function ( ... )
    -- when
    save_game_stat_file.evaluate()
    -- then
    assert.stub(system.pathForFile).was_called_with(filename, system.DocumentsDirectory)
  end)

  it("Open file", function ( ... )
    -- when
    save_game_stat_file.evaluate()
    -- then
    assert.stub(io.open).was_called_with(fakeHighscorePath, "w")
  end)

  it("If file available encode ", function ( ... )
    -- when
    save_game_stat_file.evaluate()
    -- then
    assert.stub(json.encode).was_called_with(game_stat)
  end)


  it("If file availables then write encoded json to file", function ( ... )
    -- when
    save_game_stat_file.evaluate()
    -- then
    assert.stub(fakeFile.write).was_called_with(fakeFile, expectedResult)
  end)


  it("If file available close file after decoded", function ( ... )
    -- when
    save_game_stat_file.evaluate()
    -- then
    assert.stub(io.close).was_called_with(fakeFile)
  end)

  it("Error if no highscore file available", function ( ... )
    -- given
    fakeFile = nil
    -- when then
    assert.has_error(save_game_stat_file.evaluate, "Cannot save to file")
  end)
end)
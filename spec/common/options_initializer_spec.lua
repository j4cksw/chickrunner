describe("options_initializer", function()
  local options_initializer 
  
  setup(function()
    file_loader = {
      load = function ( ... )
        return stored_game_stat
      end
    }
    spy.on(file_loader, "load")
    
    options_initializer = require("common.options_initializer")
  end)
  
  it("should load game stat from file", function ( ... )
    options_initializer.initialize()
    
    assert.stub(file_loader.load).was_called_with("game_stat")
  end)

  --[[it("should replace highScore table with data in the file if file available", function ( ... )
    initialize_game_stat.evaluate()
    
    assert.are.same(stored_game_stat, game_stat)
  end)
  
  it("should return a default game_stat table when file loading error", function()
    mock_file_loading_error()

    initialize_game_stat.evaluate()
    
    assert.are.same({high_score=0}, game_stat)
  end)
  
  function mock_file_loading_error()
    file_loader = {
      load = function ( ... )
        error("File not found")
      end
    }
    spy.on(file_loader, "load")
  end
  ]]
end)
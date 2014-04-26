describe("options_initializer", function()
  local options_initializer 
  
  local stored_options = {
    sound_initial_state = false
  }
  setup(function()
    file_loader = {
      load = function ( ... )
        return stored_options
      end
    }
    spy.on(file_loader, "load")
    
    options_initializer = require("common.options_initializer")
  end)
  
  it("should load game stat from file", function ( ... )
    options_initializer.initialize()
    
    assert.stub(file_loader.load).was_called_with("options")
  end)

  it("should replace options table with data in the file if file available", function ( ... )
    options_initializer.initialize()
    
    assert.are.same(stored_options, options)
  end)
  
  it("should return a default game_stat table when file loading error", function()
    mock_file_loading_error()

    options_initializer.initialize()
    
    assert.are.same({sound_initial_state=false}, options)
  end)
  
  function mock_file_loading_error()
    file_loader = {
      load = function ( ... )
        error("File not found")
      end
    }
    spy.on(file_loader, "load")
  end
  
end)
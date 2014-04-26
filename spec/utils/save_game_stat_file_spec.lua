describe("save_game_stat_file", function()
  local save_game_stat_file

  setup(function()
    game_stat = {}
  
    file_saver = {}
    stub(file_saver, "save")

    save_game_stat_file = require("utils.save_game_stat_file")
  end)

  it("should save game_stat table to file", function ( ... )
    save_game_stat_file.evaluate()
    
    assert.stub(file_saver.save).was_called_with("game_stat", game_stat)
  end)
end)
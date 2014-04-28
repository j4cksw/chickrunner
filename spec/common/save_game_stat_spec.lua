describe("save_game_stat_file", function()
  local save_game_stat

  setup(function()
    game_stat = {}
  
    file_saver = {}
    stub(file_saver, "save")

    save_game_stat = require("common.save_game_stat")
  end)

  it("should save game_stat table to file", function ( ... )
    save_game_stat.evaluate()
    
    assert.stub(file_saver.save).was_called_with("game_stat", game_stat)
  end)
end)
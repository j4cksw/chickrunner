describe("initialize_game_stat", function ( ... )
  local initialize_game_stat

  local stored_game_stat = {
    high_score = 9999
  }

  setup(function ( ... )

    load_game_stat_file = {
      evaluate = function ( ... )
        return stored_game_stat
      end
    }
    spy.on(load_game_stat_file, "evaluate")

    initialize_game_stat = require("scene.game.initialize_game_stat")
  end)

  it("Evaluate initialize_game_statFile", function ( ... )
    -- when
    initialize_game_stat.evaluate()
    -- then
    assert.stub(load_game_stat_file.evaluate).was_called()
  end)

  it("If file available replace highScore table with data in the file", function ( ... )
    -- when
    initialize_game_stat.evaluate()
    -- then
    assert.are.same(game_stat, stored_game_stat)
  end)

end)
describe("check_high_score_spec", function()
  local check_high_score
  
  setup(function()
    check_high_score = require("scene.game.check_high_score")
  end)
  
  it("If current score greater then set current score to game_stat.high_score", function()
    -- given
    game_stat = {
      high_score = 0
    }
    current_score = 1000
    -- when
    check_high_score.evaluate()
    -- then
    assert.are.equal(game_stat.high_score, current_score)
  end)
  
  it("Evaluate save_game_stat_file")
end)
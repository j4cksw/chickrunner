describe("check_high_score_spec", function()
  local check_high_score

  setup(function()
    game_stat = {
      high_score = 0
    }
    current_score = 1000

    save_game_stat = {}
    stub(save_game_stat, "evaluate")

    create_new_high_score_image = {}
    stub(create_new_high_score_image, "evaluate")
    
    gameNetwork = {}
    stub(gameNetwork, "request")

    check_high_score = require("scene.game.check_high_score")
  end)

  it("If current score greater then set current score to game_stat.high_score", function()
    new_high_score_image = {}
    
    check_high_score.evaluate()

    assert.are.equal(game_stat.high_score, current_score)
  end)

  it("Evaluate save_game_stat", function()
    -- when
    check_high_score.evaluate()
    -- then
    assert.stub(save_game_stat.evaluate).was_called()
  end)
  
  it("should create new_high_score_image", function()
    check_high_score.evaluate()
    
    assert.stub(create_new_high_score_image.evaluate).was_called()
  end)
end)
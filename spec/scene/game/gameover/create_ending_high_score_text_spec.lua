describe("create_ending_highscore_text", function()
  local create_ending_high_score_text
  
  local fake_text = {"..."}
  
  setup(function()
    create_text = {
      evaluate = function()
        return fake_text
      end
    }
    spy.on(create_text, "evaluate")
    
    create_ending_high_score_text = require("scene.game.gameover.create_ending_high_score_text")
  end)
  
  it("should evaluate text with proper parameters", function()
    game_stat = {
      high_score = 1000
    }
    
    gameover_ui_config = {
      ending_high_score_text_format = "Best: %dm",
      ending_high_score_text_x = 5,
      ending_high_score_text_y = 10,
      ending_score_text_size = 32
    }
    
    create_ending_high_score_text.evaluate()
    
    assert.stub(create_text.evaluate).was_called_with("Best: 1000m",
      5,
      10,
      32)
  end)

  it("When sprite animate ended set text to global ending_score_text", function()
    -- when
    create_ending_high_score_text.evaluate()
    -- then
    assert.are.equal(ending_high_score_text, fake_text)
  end)
end)
describe("ceate_final_score_text", function()
  local create_ending_score_text

  local fake_text = {"..."}

  setup(function()
    
    create_text = {
      evaluate = function()
        return fake_text
      end
    }
    stub(create_text, "evaluate")
    
    create_ending_score_text = require("scene.game.gameover.create_ending_score_text")
  end)

  it("should evaluate text with proper parameters", function()
    current_score = 100
    display = {
      contentCenterX = 5
    }
    game_scene_config = {
      ending_score_text_format = "Distance: %dm",
      ending_score_text_y = 10,
      ending_score_text_size = 32
    }
    
    create_ending_score_text.evaluate()
    
    assert.stub(create_text.evaluate).was_called_with("Distance: 100m",
      display.contentCenterX,
      game_scene_config.ending_score_text_y,
      game_scene_config.ending_score_text_size)
  end)

  it("When sprite animate ended set text to global ending_score_text", function()
    -- when
    create_ending_score_text.evaluate()
    -- then
    assert.are.equal(ending_score_text, fake_ending_score_text)
  end)
end)
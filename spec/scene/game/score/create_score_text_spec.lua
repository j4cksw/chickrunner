describe("create_score_text", function()
  local create_score_text
  
  setup(function()
    display = {
      newText = function()
      end,
      contentCenterX = 350
    }
    spy.on(display, "newText")
    
    game_scene_config = {
      score_text_y = 65
    }
  
    create_score_text = require("scene.game.score.create_score_text")
  end)
  
  it("Evalaute display.newText", function()
    -- when
    create_score_text.evaluate()
    -- then
    assert.stub(display.newText).was_called_with("0 m",
     display.contentCenterX,
      game_scene_config.score_text_y,
      "ArcadeClassic"
      , 120)
  end)
end)
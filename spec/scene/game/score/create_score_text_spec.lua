describe("create_score_text", function()
  local create_score_text
  
  setup(function()
    display = {
      newText = function()
      end,
      contentCenterX = 350
    }
    spy.on(display, "newText")
  
    create_score_text = require("scene.game.score.create_score_text")
  end)
  
  it("Evalaute display.newText", function()
    -- when
    create_score_text.evaluate()
    -- then
    assert.stub(display.newText).was_called_with("0 m",
     display.contentCenterX,
     60,
      "ArcadeClassic"
      , 120)
  end)
end)
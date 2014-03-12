describe("create_score_text", function()
  local create_score_text
  
  setup(function()
    display = {
      newText = function()
      end
    }
    spy.on(display, "newText")
  
    create_score_text = require("scene.game.score.create_score_text")
  end)
  
  it("Evalaute display.newText", function()
    -- when
    create_score_text.evaluate()
    -- then
    assert.stub(display.newText).was_called_with("0 m", 0, 0, "ArcadeClassic", 48)
  end)
  
  it("Set x to center ")
  
  it("Set y to 50")
end)
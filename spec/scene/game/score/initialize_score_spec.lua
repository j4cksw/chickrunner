describe("initialize_score", function()
  local initialize_score
  
  setup(function()
    score_text = {}
  
    initialize_score = require("scene.game.score.initialize_score")
  end)
  
  it("Set current_score to 0", function()
    -- when
    initialize_score.evaluate()
    -- then
    assert.are.equal(current_score, 0)
  end)
  
  it("Set text of score_text to 0m", function()
    -- when
    initialize_score.evaluate()
    -- then
    assert.are.equal(score_text.text, "0m")
  end)
  
  it("Set visible of score_text to true", function()
    -- when
    initialize_score.evaluate()
    -- then
    assert.are.True(score_text.isVisible)
  end)
end)
describe("increase_score", function()
  local increase_score
  
  setup(function()
    score_text = {}
  
    increase_score = require("scene.game.score.increase_score")
  end)
  
  it("Increase current score.", function()
    -- given
    current_score = 0
    -- when
    increase_score.evaluate()
    -- then
    assert.are.equal(current_score, 1)
  end)
  
  it("Update score text.", function()
    -- given
    current_score = 0
    -- when
    increase_score.evaluate()
    -- then
    assert.are.equal(score_text.text, "1 m")
  end)
end)
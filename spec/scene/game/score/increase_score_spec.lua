describe("increase_score", function()
  local increase_score
  
  setup(function()
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
  
  it("Update score text.")
end)
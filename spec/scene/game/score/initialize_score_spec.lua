describe("initialize_score", function()
  local initialize_score
  
  setup(function()
    initialize_score = require("scene.game.score.initialize_score")
  end)
  
  it("Set current_score to 0", function()
    -- when
    initialize_score.evaluate()
    -- then
    assert.are.equal(current_score, 0)
  end)
end)
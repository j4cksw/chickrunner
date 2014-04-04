describe("get_pedal_by_score", function()
  local get_pedal_by_score
  
  setup(function()
    get_pedal_by_score = require("scene.game.gameover.get_pedal_by_score")
  end)
  
  it("should return red when score is greater than or equal to 50", function()
    current_score = 50
    
    local result = get_pedal_by_score.evaluate()
    
    assert.are.equal(result, "img/screen/gameover/red.png")
  end)
end)
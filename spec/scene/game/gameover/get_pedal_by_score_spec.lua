describe("get_pedal_by_score", function()
  local get_pedal_by_score
  
  setup(function()
    get_pedal_by_score = require("scene.game.gameover.get_pedal_by_score")
  end)
  
  it("should return red when score is greater than or equal to 50", function()
    current_score = 50
    
    local result = get_pedal_by_score.evaluate()
    
    assert.are.equal(result, "img/screen/gameover/pendal_red.png")
  end)
  
  it("should return bronze when score is greater than or equal to 100", function()
    current_score = 100
    
    local result = get_pedal_by_score.evaluate()
    
    assert.are.equal(result, "img/screen/gameover/pendal_bronze.png")
  end)
  
  it("should return silver when score is greater than or equal to 150", function()
    current_score = 150
    
    local result = get_pedal_by_score.evaluate()
    
    assert.are.equal(result, "img/screen/gameover/pendal_silver.png")
  end)
  
  it("should return gold when score is greater than or equal to 200", function()
    current_score = 200
    
    local result = get_pedal_by_score.evaluate()
    
    assert.are.equal(result, "img/screen/gameover/pendal_gold.png")
  end)
end)
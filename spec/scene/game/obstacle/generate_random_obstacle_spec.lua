describe("generate_random_obstacle", function()
  local generate_random_obstacle
  
  local underscore_keys_result = {
    "pattern_1", "pattern_2"
  }
  
  local random_result = 2 
  
  setup(function()
    obstacle_pattern = {
      pattern_1 = {},
      pattern_2 = {}
    }
    
    underscore = {
      keys = function()
        return underscore_keys_result
      end
    }
    spy.on(underscore, "keys")
    
    math.random = function()
      return random_result
    end
    spy.on(math, "random")
    
    generate_obstacle = {}
    stub(generate_obstacle, "evaluate")
  
    generate_random_obstacle = require("scene.game.obstacle.generate_random_obstacle")
  end)
  
  it("Get key from obstacle_pattern", function()
    -- when
    generate_random_obstacle.evaluate()
    -- then
    assert.stub(underscore.keys).was_called_with(obstacle_pattern)
  end)
  
  it("Random number between 1 to number of keys", function()
    -- when
    generate_random_obstacle.evaluate()
    -- then
    assert.stub(math.random).was_called_with(1, #underscore_keys_result)
  end)
  
  it("Evaluate generate_obstacle with randomed result", function()
    -- when
    generate_random_obstacle.evaluate()
    -- then
    assert.stub(generate_obstacle.evaluate).was_called_with(obstacle_pattern.pattern_2)
  end)

end)
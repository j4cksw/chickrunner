describe("generate_random_obstacle", function()
  local generate_random_obstacle
  
  local underscore_keys_result = {
    "pattern_1", "pattern_2"
  } 
  
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
    
    math.random = function()end
    spy.on(math, "random")
  
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
  
  it("Return obstacle pattern with random result")
end)
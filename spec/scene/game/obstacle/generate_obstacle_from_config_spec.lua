describe("generate_obstacles_from_config", function()
  local generate_obstacles_from_config
  
  setup(function()
    obstacles_config = {
      "pattern_1",
      "pattern_2"
    }
    
    obstacle_pattern = {
      pattern_1 = "obstacle_pattern_1",
      pattern_2 = "obstacle_pattern_2"
    }
    
    generate_obstacle = {}
    stub(generate_obstacle, "evaluate")
    
    generate_obstacles_from_config = require("scene.game.obstacle.generate_obstacles_from_config")
  end)
  
  it("Evaluate generate_obstcale with provieded pattern list", function()
    -- when
    generate_obstacles_from_config.evaluate()
    -- then
    assert.stub(generate_obstacle.evaluate).was_called_with(obstacle_pattern.pattern_1)
    assert.stub(generate_obstacle.evaluate).was_called_with(obstacle_pattern.pattern_2)
  end)
end)
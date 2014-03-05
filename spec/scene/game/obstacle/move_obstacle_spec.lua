describe("move_obstacles", function()
  local move_obstacles
  
  setup(function()
    move_obstacle = {}
    stub(move_obstacle, "evaluate")
    
    obstacle_queue = {
      {}
    }
    
    move_obstacles = require("scene.game.obstacle.move_obstacles")
  end)
  
  it("Evaluate move_obstacle for element in obstacle_queue", function()
    -- when
    move_obstacles.evaluate()
    -- then
    assert.stub(move_obstacle.evaluate).was_called_with(obstacle_queue[1])
  end)
end)
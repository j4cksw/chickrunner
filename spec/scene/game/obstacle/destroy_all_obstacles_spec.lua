describe("destroy_all_obstacles", function()
  local destroy_all_obstacles
  
  local obstacle_1 = {}
  
  setup(function()
    obstacle_queue = {
      obstacle_1
    }
    
    destroy_obstacle_group = {}
    stub(destroy_obstacle_group, "evaluate")
    
    destroy_all_obstacles = require("scene.game.obstacle.destroy_all_obstacles")
  end)
  
  it("Evalaute destroy_obstacle for obstacle_group in obstacle_queue", function()
    -- when
    destroy_all_obstacles.evaluate()
    -- then
    assert.stub(destroy_obstacle_group.evaluate).was_called_with(obstacle_1)
  end)
end)

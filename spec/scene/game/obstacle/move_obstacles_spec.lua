describe("move_obstacles", function()
  local move_obstacles
  
  local obstacle_1 = {}
  local obstacle_2 = {}
  local obstacle_3 = {}
  
  setup(function()
    move_obstacle = {}
    stub(move_obstacle, "evaluate")
    
    obstacle_queue = {
      obstacle_1,
      obstacle_2,
      obstacle_3
    }
    
    check_next_obstacle_group = {}
    stub(check_next_obstacle_group, "evaluate")
    
    move_obstacles = require("scene.game.obstacle.move_obstacles")
  end)
  
  it("Evaluate move_obstacle for element in obstacle_queue", function()
    -- when
    move_obstacles.evaluate()
    -- then
    assert.stub(move_obstacle.evaluate).was_called_with(obstacle_queue[1])
  end)
  
  it("Evalaute check_next_obstacle_group", function()
    -- when
    move_obstacles.evaluate()
    -- then
    assert.stub(check_next_obstacle_group.evaluate).was_called()
  end)
end)
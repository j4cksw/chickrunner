describe("remove_left_obstacles", function()
  local remove_left_obstacle
  
  setup(function()
    remove_left_obstacle = require("scene.game.obstacle.remove_left_obstacle")
  end)
  
  it("should remove obstacle which is move out of the screen", function()
    local obstacle_1 = {x=55}
    
    local obstacle_group_1 = {
      obstacle_1,
      numChildren = 1
    }
    
    obstacle_queue = {
      obstacle_group_1
    }
    
    game_scene_config = {
      remove_obstacle_position = 56
    }
    
    remove_left_obstacle.evaluate()
    
    assert.stub(display.remove).was_called_with(obstacle_1)
  end)
end)
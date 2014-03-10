describe("remove_obstacle", function()
  local remove_obstacle
  
  setup(function()
    display = {}
    stub(display, "remove")
  
    remove_obstacle = require("scene.game.obstacle.remove_obstacles")
  end)
  
  it("Evaluate display.remove with every elements in obstacle queue", function()
    -- given
    local sample_obstacle_element = "x"
    obstacle_queue = {
       sample_obstacle_element 
    }
    -- when
    remove_obstacle.evaluate()
    -- then
    assert.stub(display.remove).was_called_with(sample_obstacle_element)
  end)
end)
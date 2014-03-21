describe("hide_all_obstacles", function()
  local hide_all_obstacles
  
  setup(function()
    hide_all_obstacles = require("scene.game.obstacle.hide_all_obstacles")
  end)
  
  it("Set isVisible property of every obstacles in queue to false", function()
    -- given
    obstacle_queue = {
      {}, {}, {}
    }
    -- when
    hide_all_obstacles.evaluate()
    -- then
    assert.are.False(obstacle_queue[1].isVisible)
  end)
end)
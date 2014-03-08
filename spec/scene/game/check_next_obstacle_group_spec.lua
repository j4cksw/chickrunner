describe("check_next_obstacle_group", function()
  local check_next_obstacle_group
  
  setup(function()
    get_last_obstacle_horizontal_position = {
      evaluate = function()end
    }
    spy.on(get_last_obstacle_horizontal_position, "evaluate")
  
    check_next_obstacle_group = require("scene.game.obstacle.check_next_obstacle_group")
  end)
  
  it("Evaluate get_last_obstacle_horizontal_position", function()
    -- when
    check_next_obstacle_group.evaluate()
    -- then
    assert.stub(get_last_obstacle_horizontal_position.evaluate).was_called()
  end)
  
  it("If result lower than screenWidth then evaluate generate_obstacle")
end)

describe("check_next_obstacle_group", function()
  local check_next_obstacle_group
  
  local last_obstacle_position = 1000
  
  setup(function()
    get_last_obstacle_horizontal_position = {
      evaluate = function()
        return last_obstacle_position
      end
    }
    spy.on(get_last_obstacle_horizontal_position, "evaluate")
    
    display = {
      viewableContentWidth = 1000
    }
    
    generate_obstacle = {}
    stub(generate_obstacle, "evaluate")
    
    check_next_obstacle_group = require("scene.game.obstacle.check_next_obstacle_group")
  end)
  
  it("Evaluate get_last_obstacle_horizontal_position", function()
    -- when
    check_next_obstacle_group.evaluate()
    -- then
    assert.stub(get_last_obstacle_horizontal_position.evaluate).was_called()
  end)
  
  it("If result lower or equal screenWidth then evaluate generate_obstacle", function()
    -- when
    check_next_obstacle_group.evaluate()
    -- then
    assert.stub(generate_obstacle.evaluate).was_called_with()
  end)
end)

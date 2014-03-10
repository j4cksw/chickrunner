describe("generate_obstacle", function()
  local generate_obstacle
  
  local sample_obstacle = {}
  
  setup(function()
    generate_box = {
      evaluate = function()
        return sample_obstacle
      end
    }
    spy.on(generate_box, "evaluate")
    
    
    generate_obstacle_space = {
      evaluate = function()
        return sample_obstacle
      end
    }
    spy.on(generate_obstacle_space, "evaluate")
    
    set_obstacle_element_position = {}
    stub(set_obstacle_element_position, "evaluate")
    
    obstacle_pattern = {
      {
        { "box" }
      }
    }
    
    obstacle_queue = {}
    
    generate_obstacle = require("scene.game.obstacle.generate_obstacle")
  end)
  
  it("Evaluate generate_box when box available in pattern", function()
    -- when
    generate_obstacle.evaluate()
    -- then
    assert.stub(generate_box.evaluate).was_called()
  end)
  
  it("Evaluate set_obstacle_position", function()
    -- when
    generate_obstacle.evaluate()
    -- then
    assert.stub(set_obstacle_element_position.evaluate).was_called_with(1, 1, sample_obstacle)
  end)
  
  it("Evaluate generate_space when space available in pattern", function()
    -- given
    obstacle_pattern = {
      {
        { "space" }
      }
    }
    -- when
    generate_obstacle.evaluate()
    -- then
    assert.stub(generate_obstacle_space.evaluate).was_called()
  end)
  
  
end)
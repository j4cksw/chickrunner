describe("generate_obstacle", function()
  local generate_obstacle
  
  local sample_obstacle = {}
  
  local obstacle_group = {}
  
  local selected_obstacle_pattern = {
   { "box" }
  }
  
  setup(function()
    
    stub(obstacle_group, "insert")
    
    display = {
      newGroup = function()
        return obstacle_group
      end
    }
    spy.on(display, "newGroup")
    
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
    
    
    
    obstacle_queue = {}
    
    generate_obstacle = require("scene.game.obstacle.generate_obstacle")
  end)
  
  it("Evaluate generate_box when box available in pattern", function()
    -- when
    generate_obstacle.evaluate(selected_obstacle_pattern)
    -- then
    assert.stub(generate_box.evaluate).was_called()
  end)
  
  it("Evaluate set_obstacle_position", function()
    -- when
    generate_obstacle.evaluate(selected_obstacle_pattern)
    -- then
    assert.stub(set_obstacle_element_position.evaluate).was_called_with(1, 1, sample_obstacle)
  end)
  
  it("Evaluate generate_space when space available in pattern", function()
    -- given
    selected_obstacle_pattern = {
        { "space" }
    }
    -- when
    generate_obstacle.evaluate(selected_obstacle_pattern)
    -- then
    assert.stub(generate_obstacle_space.evaluate).was_called()
  end)
  
  
end)
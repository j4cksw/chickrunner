describe("generate_obstacle", function()
  local generate_obstacle
  
  local fake_box = {}
  
  setup(function()
    generate_box = {
      evaluate = function()
        return fake_box
      end
    }
    spy.on(generate_box, "evaluate")
    
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
  
  it("Evaluate generate box", function()
    -- when
    generate_obstacle.evaluate()
    -- then
    assert.stub(generate_box.evaluate).was_called()
  end)
  
  it("Evaluate set_obstacle_position", function()
    -- when
    generate_obstacle.evaluate()
    -- then
    assert.stub(set_obstacle_element_position.evaluate).was_called_with(1, 1, fake_box)
  end)
end)
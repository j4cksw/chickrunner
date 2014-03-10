describe("set_obstacle_element_position_spec", function()
  local set_obstacle_element_position
  
  local sample_obstacle_element = {
    contentWidth = 128
  }
  local obstacle_element_x = 500
  local obstacle_element_y = 1000
  
  setup(function()
    
    calculate_obstacle_element_vertical_position = {
      evaluate = function(box_sprite)
        return obstacle_element_y
      end
    }
    spy.on(calculate_obstacle_element_vertical_position, "evaluate")
    
    calculate_obstacle_element_horizontal_position = {
      evaluate = function()
        return obstacle_element_x
      end
    }
    spy.on(calculate_obstacle_element_horizontal_position, "evaluate")
    
    set_obstacle_element_position = require("scene.game.obstacle.set_obstacle_element_position")
  end)
  
  it("Evalaute calculate_obstacle_element_horizontal_position", function()
    -- given
    local element_index = 1
    -- when
    set_obstacle_element_position.evaluate(1, element_index, sample_obstacle_element)
    -- then
    assert
      .stub(calculate_obstacle_element_horizontal_position.evaluate)
        .was_called_with(element_index,
          sample_obstacle_element)
  end)
  
  it("Set result from calculate_obstacle_element_horizontal_position to x", function()
    -- given
    local element_index = 1
    -- when
    set_obstacle_element_position.evaluate(1, element_index, sample_obstacle_element)
    -- then
    assert.are.equal(sample_obstacle_element.x, obstacle_element_x)
  end)
  
  it("Evaluate calculate_obstacle_element_vertical_position", function()
    -- given
    local row_index = 1
    -- when
    set_obstacle_element_position.evaluate(row_index, 1, sample_obstacle_element)
    -- then
    assert.stub(calculate_obstacle_element_vertical_position.evaluate).was_called_with(row_index, sample_obstacle_element)
  end)
  
  it("Set result from calculate_obstacle_element_vertical_position to y")
end)

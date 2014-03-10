describe("calculate_obstacle_element_vertical_position", function()
  local calculate_obstacle_element_vertical_position
  
  local ground_vertical_pos = 1000
  
  local sample_obstacle_element = {
   contentHeight = 200 
  }
  
  setup(function()
    get_ground_vertical_position = {
      evaluate = function()
        return ground_vertical_pos
      end
    }
    spy.on(get_ground_vertical_position, "evaluate")
    
    calculate_obstacle_element_vertical_position = require("scene.game.obstacle.calculate_obstalce_element_vertical_position")
  end)
  
  it("Evaluate get_ground_vertical_position", function()
    -- when
    calculate_obstacle_element_vertical_position.evaluate(1, sample_obstacle_element)
    -- then
    assert.stub(get_ground_vertical_position.evaluate).was_called_with(sample_obstacle_element)
  end)
  
  local test_data = {
    { row_index=1, expected_result=1000 },
    { row_index=2, expected_result=800 },
    { row_index=3, expected_result=600 }
  }
  
  for index, data in pairs(test_data) do
    it("Return data "..data.expected_result.." when given row_index "..data.row_index, function()
      -- given
      local row_index = data.row_index
      local expected_result = data.expected_result
      -- when
      local result = calculate_obstacle_element_vertical_position.evaluate(row_index, sample_obstacle_element)
      -- then
      assert.are.equal(result, expected_result)
    end)
  end
end)
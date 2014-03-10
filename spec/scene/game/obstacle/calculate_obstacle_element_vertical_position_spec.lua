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
    calculate_obstacle_element_vertical_position = require("scene.game.obstacle.calculate_obstalce_element_vertical_position")
  end)
  
  local test_data = {
    { row_index=1, expected_result=1000 },
    { row_index=2, expected_result=1200 },
    { row_index=3, expected_result=1400 }
  }
  
  it("Return expected result when given")
end)
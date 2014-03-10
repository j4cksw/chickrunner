describe("calculate_obstacle_element_horizontal_position", function()
  local calculate_obstacle_element_horizontal_position
  
  local sample_obstacle_element = {
    contentWidth = 100
  }
  
  local last_obstacle_position = 720
  
  setup(function()
    game_scene_config = {
      obstacle_horizontal_start = 720
    }
    
    get_last_obstacle_horizontal_position = {
      evaluate = function()
        return last_obstacle_position
      end
    }
    spy.on(get_last_obstacle_horizontal_position, "evaluate")
    
    
    calculate_obstacle_element_horizontal_position = require("scene.game.obstacle.calculate_obstacle_element_horizontal_position")
  end)
  
  it("Evalaute get_last_obstacle_horizontal_position", function()
    -- given
    obstacle_queue = { "x" }
    -- when
    calculate_obstacle_element_horizontal_position.evaluate(1, sample_obstacle_element)
    -- then
    assert.stub(get_last_obstacle_horizontal_position.evaluate).was_called()
  end)
  
  it("Return obstacle starting point from config if no obstacle available", function()
    -- given
    obstacle_queue = {}
    -- when
    local result = calculate_obstacle_element_horizontal_position.evaluate(1, sample_obstacle_element)
    -- then
    assert.are.equal(result, 770)
  end)
end)
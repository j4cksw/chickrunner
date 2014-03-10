describe("set_obstacle_element_position_spec", function()
  local set_obstacle_element_position
  
  local sample_obstacle_element = {
    contentWidth = 128
  }
  local ground_vertical_position = 1000
  
  setup(function()
    game_scene_config = {
      obstacle_horizontal_start = 700
    }
    
    get_ground_vertical_position = {
      evaluate = function(box_sprite)
        return ground_vertical_position
      end
    }
    spy.on(get_ground_vertical_position, "evaluate")
    
    set_obstacle_element_position = require("scene.game.obstacle.set_obstacle_element_position")
  end)
  
  it("Set element.x position from config and given element index", function()
    -- when
    set_obstacle_element_position.evaluate(1,1, sample_obstacle_element)
    -- then
    assert.are.equal(sample_obstacle_element.x, game_scene_config.obstacle_horizontal_start)
  end)
  
  it("Set element.x position from config and given element index", function()
    -- when
    set_obstacle_element_position.evaluate(1, 2, sample_obstacle_element)
    -- then
    assert.are.equal(sample_obstacle_element.x, game_scene_config.obstacle_horizontal_start + 128)
  end)
  
  it("Evaluate get_ground_vertical_position", function()
    -- when
    set_obstacle_element_position.evaluate(1, 1, sample_obstacle_element)
    -- then
    assert.stub(get_ground_vertical_position.evaluate).was_called_with(sample_obstacle_element)
  end)
  
  it("Set element.y position from ground and given row index", function()
    -- when
    set_obstacle_element_position.evaluate(1, 1, sample_obstacle_element)
    -- then
    assert.are.equal(sample_obstacle_element.y, ground_vertical_position)
  end)
end)

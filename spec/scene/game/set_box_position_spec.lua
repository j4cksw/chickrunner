describe("set_box_position", function()
  local set_box_position
  
  local box_sprite = {}
  
  setup(function()
    
    game_scene_config = {
      box_horizontal_start = 1000
    }
    
    set_box_position = require("scene.game.set_box_position")
  end)
  
  it("Set x position from config", function()
    -- when
    set_box_position.evaluate(box_sprite)
    -- then
    assert.are.equal(box_sprite.x, game_scene_config.box_horizontal_start)
  end)
  
  it("Set y position from evaluating get_ground_vertical_position")
end)
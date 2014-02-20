describe("initialize_chick", function()
  local initialize_chick
  
  local chick_sprite = {}
  
  setup(function()
    create_chick_sprite = {
      evaluate = function()
        return chick_sprite
      end
    }
    spy.on(create_chick_sprite, "evaluate")
    
    game_scene_config = {
      chick_start = 99
    }
    
    get_ground_vertical_position = {
      evaluate = function()
        return 1000
      end
    }
    spy.on(get_ground_vertical_position, "evaluate")
  
    initialize_chick = require("scene.initialize_chick")
  end)
  
  it("Evaluate create chick", function()
    -- when
    initialize_chick.evaluate()
    -- then
    assert.stub(create_chick_sprite.evaluate).was_called()
  end)
  
  it("Set x position from config", function()
    -- when
    initialize_chick.evaluate()
    -- then
    assert.are.equal(chick_sprite.x, game_scene_config.chick_start)
  end)
  
  it("Evalaute get_ground_vertical_position", function()
    -- when
    initialize_chick.evaluate()
    -- then
    assert.stub(get_ground_vertical_position.evaluate).was_called_with(chick_sprite)
  end)
  
  it("Set calculated y position")
end)
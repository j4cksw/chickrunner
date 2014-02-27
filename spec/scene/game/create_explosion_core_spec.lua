describe("create_explosion_core", function()
  local create_explosion_core
  
  local explosion_rect = {}
  
  setup(function()
    display = {
      newRect = function()
        return explosion_rect
      end
    }
    spy.on(display, "newRect")
    
    game_scene_config = {
      explosion_core_width = 10,
      explosion_core_x = 64
    }
    
    explosion_sprite_config = {
      options = {width = 320, height = 384, numFrames = 15}
    }
    
    get_ground_vertical_position = {
      evaluate = function()
        return 1000
      end
    }
    
    physics = {}
    stub(physics, "addBody")
    
    insert_to_current_view_group = {}
    stub(insert_to_current_view_group, "evaluate")
    
    create_explosion_core = require("scene.game.create_explosion_core")
  end)
  
  it("Create rectangle", function()
    -- when
    create_explosion_core.evaluate()
    -- then
    assert.stub(display.newRect).was_called_with(0, 0, 10, 384)
  end)
  
  it("Set x position from config", function()
    -- when
    create_explosion_core.evaluate()
    -- then
    assert.are.equal(explosion_rect.x, 64)
  end)
  
  it("Set y position from evaluating get_ground_vertical_position", function()
    -- when
    create_explosion_core.evaluate()
    -- then
    assert.are.equal(explosion_rect.y, 1000)
  end)
  
  it("Set alpha of the rectangle to 0", function()
    -- when
    create_explosion_core.evaluate()
    -- then
    assert.are.equal(explosion_rect.alpha, 0)
  end)
  
  it("Add physics body to the ractangle", function()
    -- when
    create_explosion_core.evaluate()
    -- then
    assert.stub(physics.addBody).was_called_with(explosion_rect, "static")
  end)
  
  it("Insert to current view group", function()
    -- when
    create_explosion_core.evaluate()
    -- then
    assert.stub(insert_to_current_view_group.evaluate).was_called_with(explosion_rect)
  end)
  
  it("Add collision event to the ractangle")
  
end)
describe("create_explosion_core", function()
  local create_explosion_core
  
  local explosion_rect = {}
  
  local explosion_core_y = 700
  
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
  
  it("Set alpha of the rectangle to 0")
  
  it("Add physics body to the ractangle")
  
  it("Add collision event to the ractangle")
  
  it("Insert to current view group")
end)
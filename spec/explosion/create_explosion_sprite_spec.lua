describe("create_explosion_sprite", function()
  
  local create_explosion_sprite
  local x = 0
  local y = 0
  local explosion_sprite = {}
  
  setup(function()
    explosion_image_sheet = {}
    explosion_sprite_config = {
      sequenceData = {}
    }
    
    display = {
      newSprite = function() return explosion_sprite end
    }
    spy.on(display, "newSprite")
    
    create_explosion_sprite = require("explosion.create_explosion_sprite")
  end)
  
  
  it("Create new explosion sprite from display.newSprite", function()
    -- when
    create_explosion_sprite.evaluate(x,y)
    -- then
    assert.stub(display.newSprite).was_called_with(explosion_image_sheet, 
      explosion_sprite_config.sequenceData)
  end)
  
  it("Set a given position")
  
  it("Insert to current view group")
  
end)
describe("create_chick_sprite", function()
  local create_chick_sprite
  
  setup(function()
    chick_image_sheet = {}
    
    chick_sprite_config = { sequenceData={} }
    
    display = {
      newSprite = function()
        return chick_sprite
      end
    }
    spy.on(display, "newSprite")
    
    create_chick_sprite = require("chick.create_chick_sprite")
  end)
  
  it("Create new chick sprite from display.newSprite", function()
    -- when
    create_chick_sprite.evaluate()
    -- then
    assert.stub(display.newSprite).was_called_with(chick_image_sheet, 
      chick_sprite_config.sequenceData)
  end)
  
--  it("Insert to current view group", function()
--    -- when
--    create_explosion_sprite.evaluate()
--    -- then
--    assert.stub(insert_to_current_view_group.evaluate).was_called_with(explosion_sprite)
--  end)
--  
--  it("Set normal sequence", function()
--    -- when
--    create_explosion_sprite.evaluate()
--    -- then
--    assert.stub(explosion_sprite.setSequence).was_called_with(explosion_sprite, "normal")
--  end)
--  
--  it("Play the sprite", function() 
--    -- when
--    create_explosion_sprite.evaluate()
--    -- then
--    assert.stub(explosion_sprite.play).was_called_with(explosion_sprite)
--  end)
end)
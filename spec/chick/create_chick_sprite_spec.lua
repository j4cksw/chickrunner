describe("create_chick_sprite", function()
  local create_chick_sprite
  local chick_sprite = {}
  
  setup(function()
    chick_image_sheet = {}
    
    chick_sprite_config = { sequenceData={} }
    
    display = {
      newSprite = function()
        return chick_sprite
      end
    }
    spy.on(display, "newSprite")
    
    insert_to_current_view_group = {}
    stub(insert_to_current_view_group, "evaluate")
    
    add_physics_body_to_chick = {}
    stub(add_physics_body_to_chick, "evaluate")
    
    stub(chick_sprite, "setSequence")
    stub(chick_sprite, "play")
    
    create_chick_sprite = require("chick.create_chick_sprite")
  end)
  
  it("Create new chick sprite from display.newSprite", function()
    -- when
    create_chick_sprite.evaluate()
    -- then
    assert.stub(display.newSprite).was_called_with(chick_image_sheet, 
      chick_sprite_config.sequenceData)
  end)
  
  it("Insert to current view group", function()
    -- when
    create_chick_sprite.evaluate()
    -- then
    assert.stub(insert_to_current_view_group.evaluate).was_called_with(chick_sprite)
  end)
  
  it("Evaluate add_physics_body_to_chick", function()
    -- when
    create_chick_sprite.evaluate()
    -- then
    assert.stub(add_physics_body_to_chick.evaluate).was_called_with(chick_sprite)
  end)
  
  it("Set normal sequence", function()
    -- when
    create_chick_sprite.evaluate()
    -- then
    assert.stub(chick_sprite.setSequence).was_called_with(chick_sprite, "normal")
  end)
  
  it("Play the sprite", function() 
    -- when
    create_chick_sprite.evaluate()
    -- then
    assert.stub(chick_sprite.play).was_called_with(chick_sprite)
  end)
end)
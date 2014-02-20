describe("create_explosion_sprite", function()
  
  local create_explosion_sprite
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
    
    insert_to_current_view_group = {}
    stub(insert_to_current_view_group, "evaluate")
    
    stub(explosion_sprite, "setSequence")
    stub(explosion_sprite, "play")
    stub(explosion_sprite, "addEventListener")
    
    explosion_sprite_event_listener = { evaluate=function()end}
    
    
    create_explosion_sprite = require("explosion.create_explosion_sprite")
  end)
  
  
  it("Create new explosion sprite from display.newSprite", function()
    -- when
    create_explosion_sprite.evaluate()
    -- then
    assert.stub(display.newSprite).was_called_with(explosion_image_sheet, 
      explosion_sprite_config.sequenceData)
  end)
  
  it("Insert to current view group", function()
    -- when
    create_explosion_sprite.evaluate()
    -- then
    assert.stub(insert_to_current_view_group.evaluate).was_called_with(explosion_sprite)
  end)
  
  it("Set normal sequence", function()
    -- when
    create_explosion_sprite.evaluate()
    -- then
    assert.stub(explosion_sprite.setSequence).was_called_with(explosion_sprite, "normal")
  end)
  
  it("Play the sprite", function() 
    -- when
    create_explosion_sprite.evaluate()
    -- then
    assert.stub(explosion_sprite.play).was_called_with(explosion_sprite)
  end)
  
  it("Add explosion_sprite_listener to explosion_sprite", function()
    -- when
    create_explosion_sprite.evaluate()
    -- then
    assert.stub(explosion_sprite.addEventListener)
      .was_called_with(explosion_sprite,
        "sprite",
        explosion_sprite_event_listener.evaluate)
  end)
  
end)
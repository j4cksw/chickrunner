describe("create_box_sprite", function()
  local create_box_sprite
  
  local box_sprite = {}
  
  setup(function()
    display = {
      newSprite = function()
        return box_sprite
      end
    }
    spy.on(display, "newSprite")
    
    box_image_sheet = {}
    box_sprite_config = {
      sequence_data = {}
    }
    
    stub(box_sprite, "setSequence")
    
    create_box_sprite = require("box.create_box_sprite")
  end)
  
  it("Call display.newSprite with proper parameters", function()
    -- when
    create_box_sprite.evaluate()
    -- then
    assert.stub(display.newSprite)
      .was_called_with(box_image_sheet, 
        box_sprite_config.sequence_data)
  end)
  
  it("Set sprite sequence to tnt", function()
    -- when
    create_box_sprite.evaluate()
    -- then
    assert.stub(box_sprite.setSequence).was_called_with(box_sprite, 'tnt')
  end)
  
  it("Set type to box", function()
    -- when
    create_box_sprite.evaluate()
    -- then
    assert.are.equal(box_sprite.type, "box")
  end)
  
  it("Return a box_sprite", function()
    -- when
    local result = create_box_sprite.evaluate()
    -- then
    assert.are.equal(box_sprite, result)
  end)
end)
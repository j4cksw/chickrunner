describe("create_explosion_image_sheet", function()
  local create_explosion_image_sheet
  
  local fake_explosion_image_sheet = {}
  
  setup(function()
    explosion_sprite_config = {
      path="path/to/sprite",
      options={}
    }
    
    display = {
      newImageSheet = function()
        return fake_explosion_image_sheet
      end
    }
    spy.on(display, "newImageSheet")
  
    create_explosion_image_sheet = require("explosion.create_explosion_image_sheet")
  end)
  
  it("Create image sheet with explosion sprite path", function()
    -- given
    local sprite_path = explosion_sprite_config.path
    local options = explosion_sprite_config.options
    -- when
    create_explosion_image_sheet.evaluate()
    -- then
    assert.stub(display.newImageSheet).was_called_with(sprite_path, options)
  end)
  
  it("Set to global variable explosion_image_sheet", function()
    -- when
    create_explosion_image_sheet.evaluate()
    -- then
    assert.are.same(explosion_image_sheet, fake_explosion_image_sheet)
  end)
end)
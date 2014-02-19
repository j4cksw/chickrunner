describe("create_chick_image_sheet", function()
  local create_chick_image_sheet
  
  setup(function()
    graphics = {
      newImageSheet=function()
        return chick_image_sheet
      end
    }
    spy.on(graphics, "newImageSheet")
    
    chick_sprite_config = {
      path="",
      options={}
    }
    
    
    
    create_chick_image_sheet = require("chick.create_chick_image_sheet")
  end)
  
  it("Create new image sheet from graphics module with propertie from config", function()
    -- when
    create_chick_image_sheet.evaluate()
    -- then
    assert.stub(graphics.newImageSheet).was_called_with(chick_sprite_config.path, chick_sprite_config.options)
  end)
  it("Set to chick_image_sheet global variable")
end)
describe("create_box_image_sheet", function()
  local create_box_image_sheet
  
  setup(function()
    box_sprite_config = {
      path = "//",
      options = {}
    }
    
    graphics = {
      newImageSheet = function()
        return box_image_sheet
      end 
    }
    spy.on(graphics, "newImageSheet")
    
    create_box_image_sheet = require("box.create_box_image_sheet")
  end)
  
  it("Call graphics.newImageSheet with proper parameters", function()
    -- when
    create_box_image_sheet.evaluate()
    -- then
    assert.stub(graphics.newImageSheet)
      .was_called_with(box_sprite_config.path,
        box_sprite_config.options)
  end)
  
  it("Set image sheet to global variable name box_image_sheet ")
end)
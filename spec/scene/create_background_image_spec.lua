describe("create_background_image", function()
  local create_background_image
  
  setup(function()
    display = {
      newImage = function()
        return background_image
      end
    }
    spy.on(display, "newImage")
  
    create_background_image = require("scene.create_background_image")
  end)
  
  it("Create background image", function()
    -- when
    create_background_image.evaluate()
    -- then
    assert.stub(display.newImage).was_called_with("img/background/bg.png")
  end)
  
  it("Add to current viewgroup")
end)
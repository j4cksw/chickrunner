describe("create_pedal_image_spec", function()
  local create_pedal_image_spec
  
  setup(function()
    display = {
      newImage = function()end
    }
    spy.on(display, "newImage")
    
    create_pedal_image_spec = require("scene.game.gameover.create_pedal_image")
  end)
  
  it("should not create pedal image when score lower than 50", function()
    create_pedal_image_spec.evaluate()
    
    assert.stub(display.newImage).was_not_called()
  end)
end)
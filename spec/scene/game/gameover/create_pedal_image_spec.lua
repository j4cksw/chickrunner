describe("create_pedal_image_spec", function()
  local create_pedal_image_spec
  
  local fake_image = {}
  
  setup(function()
    display = {
      newImage = function()
        return fake_image
      end
    }
    spy.on(display, "newImage")
    
    create_pedal_image_spec = require("scene.game.gameover.create_pedal_image")
  end)
  
  before_each(function()
  
  end)
  
  it("should not create pedal image when score lower than 50", function()
    current_score = 0
    
    create_pedal_image_spec.evaluate()
    
    assert.stub(display.newImage).was_not_called()
  end)
  
  it("should create red pedal image when score greater or equal to 50", function()
    current_score = 50
    
    create_pedal_image_spec.evaluate()
    
    assert.stub(display.newImage).was_called_with("img/screen/gameover/pendal_red.png")
  end)
  
  it("should set global variable pedal_image", function()
    current_score = 50
    
    create_pedal_image_spec.evaluate()
    
    assert.are.equal(pedal_image, fake_image)
  end)
end)
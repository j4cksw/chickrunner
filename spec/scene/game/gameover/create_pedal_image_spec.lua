describe("create_pedal_image_spec", function()
  local create_pedal_image_spec
  
  local fake_image = {"fake image"}
  
  setup(function()
    display = {
      newImage = function()
        return fake_image
      end
    }
    spy.on(display, "newImage")
    
    gameover_ui_config = {
      pedal_image_x = 550,
      pedal_image_y = 448
    }
    
    get_pedal_by_score = {
      evaluate = function()
        return "fake_pedal"
      end
    }
    spy.on(get_pedal_by_score, "evaluate")
    
    create_pedal_image_spec = require("scene.game.gameover.create_pedal_image")
  end)
  
  it("should not create pedal image when score lower than 50", function()
    current_score = 0
    
    create_pedal_image_spec.evaluate()
    
    assert.stub(display.newImage).was_not_called()
  end)
  
  it("should create red pedal image when score greater or equal to 50", function()
    current_score = 50
    
    create_pedal_image_spec.evaluate()
    
    assert.stub(get_pedal_by_score.evaluate).was_called()
  end)
  
  it("should create red pedal image when score greater or equal to 50", function()
    current_score = 50
    
    create_pedal_image_spec.evaluate()
    
    assert.stub(display.newImage).was_called_with("fake_pedal")
  end)
  
  it("should set global variable pedal_image", function()
    current_score = 50
    
    create_pedal_image_spec.evaluate()
    
    assert.are.equal(pedal_image, fake_image)
  end)
  
  it("should set x position of pedal image to 550", function()
    current_score = 50
    
    create_pedal_image_spec.evaluate()
    
    assert.are.equal(fake_image.x, 550)
  end)
  
  it("should set x position of pedal image to 550", function()
    current_score = 50
    
    create_pedal_image_spec.evaluate()
    
    assert.are.equal(fake_image.y, 448)
  end)
  
end)
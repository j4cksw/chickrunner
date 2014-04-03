describe("create_new_high_score_image", function()
  local create_new_high_score_image
  
  local fake_image
  
  setup(function()
    gameover_ui_config = {
      new_high_score_image_path = "img/screen/gameover/new.png",
      new_high_score_image_x = 227,
      new_high_score_image_y = 450
    }
    
    fake_image = {"fake_image"}
    
    display = {
      newImage = function()
        return fake_image
      end
    }
    spy.on(display, "newImage")
    
    create_new_high_score_image = require("scene.game.gameover.create_new_high_score_image")
  end)
  
  it("should create new high score image", function()
    create_new_high_score_image.evaluate()
    
    assert.stub(display.newImage).was_called_with("img/screen/gameover/new.png")
  end)
  
  it("should set to global variable new high score image", function()
    create_new_high_score_image.evaluate()
    
    assert.are.equal(fake_image, new_high_score_image)
  end)
  
  it("should set x to 227", function()
    create_new_high_score_image.evaluate()
    
    assert.are.equal(fake_image.x, 227)
  end)
  
  it("should set y to 450", function()
    create_new_high_score_image.evaluate()
    
    assert.are.equal(fake_image.y, 450)
  end)
end)
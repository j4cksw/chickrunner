describe("create_ending_high_score_label", function()
  local create_ending_high_score_label
  
  local fake_image = {"fake_image"}
  
  setup(function()
    gameover_ui_config = {
      ending_high_score_label_image_path = "img/screen/gameover/best.png",
      ending_high_score_label_x = 200,
      ending_high_score_label_y = 374
    }
    
    display = {
      newImage = function()
        return fake_image
      end
    }
    spy.on(display, "newImage")
    
    create_ending_high_score_label = require("scene.game.gameover.create_ending_high_score_label")
  end)
  
  it("should create ending score label image", function()
    create_ending_high_score_label.evaluate()
    
    assert.stub(display.newImage).was_called_with("img/screen/gameover/best.png")
  end)
  
  it("should set to global variable ending_high_score_label", function()
    create_ending_high_score_label.evaluate()
    
    assert.are.equal(fake_image, ending_high_score_label)
  end)
  
  it("should set x to 220", function()
    create_ending_high_score_label.evaluate()
    
    assert.are.equal(fake_image.x, 200)
  end)
  
  it("should set y to 374", function()
    create_ending_high_score_label.evaluate()
    
    assert.are.equal(fake_image.y, 374)
  end)
end)
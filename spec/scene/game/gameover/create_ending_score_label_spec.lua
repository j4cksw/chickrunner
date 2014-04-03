describe("create_ending_score_label", function()
  local create_ending_score_label
  
  local fake_image = {"fake_image"}
  
  setup(function()
    display = {
      newImage = function()
        return fake_image
      end
    }
    spy.on(display, "newImage")
    
    create_ending_score_label = require("scene.game.gameover.create_ending_score_label")
  end)
  
  it("should create ending score label image", function()
    create_ending_score_label.evaluate()
    
    assert.stub(display.newImage).was_called_with("img/screen/gameover/score.png")
  end)
  
  it("should set to global variable ending_score_label", function()
    create_ending_score_label.evaluate()
    
    assert.are.equal(fake_image, ending_score_label)
  end)
  
  it("should set x to 220", function()
    create_ending_score_label.evaluate()
    
    assert.are.equal(fake_image.x, 220)
  end)
  
  it("should set y to 374")
end)
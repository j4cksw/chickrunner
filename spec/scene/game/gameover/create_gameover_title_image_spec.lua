describe("create_gameover_title_image", function()
  local create_gameover_title_image
  
  local fake_gameover_title_image = {"..."}
  
  setup(function()
    display = {
      contentCenterX = 50,
      newImage = function()
        return fake_gameover_title_image
      end
    }
    spy.on(display, "newImage")
    
    create_gameover_title_image = require("scene.game.gameover.create_gameover_title_image")
  end)
  
  it("should create gameover title image", function()
    create_gameover_title_image.evaluate()
    
    assert.stub(display.newImage).was_called_with("img/screen/gameover/gameover.png")
  end)
  
  it("should set x to center of screen", function()
    create_gameover_title_image.evaluate()
    
    assert.are.equal(fake_gameover_title_image.x, 50)
  end)
end)
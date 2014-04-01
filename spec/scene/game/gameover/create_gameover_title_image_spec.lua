describe("create_gameover_title_image", function()
  local create_gameover_title_image
  
  setup(function()
    display = {}
    stub(display, "newImage")
    
    create_gameover_title_image = require("scene.game.gameover.create_gameover_title_image")
  end)
  
  it("should create gameover title image", function()
    create_gameover_title_image.evaluate()
    
    assert.stub(display.newImage).was_called_with("img/screen/gameover/gameover.png")
  end)
end)
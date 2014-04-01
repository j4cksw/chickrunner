describe("create_gameover_title_image", function()
  local create_gameover_title_image

  local fake_gameover_title_image = {"..."}

  setup(function()
    gameover_ui_config = {
      gameover_title_image_path="img/screen/gameover/gameover.png",
      gameover_title_image_y=215
    }
    
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

  it("should set y to 215", function()
    create_gameover_title_image.evaluate()

    assert.are.equal(fake_gameover_title_image.y, 215)
  end)
end)
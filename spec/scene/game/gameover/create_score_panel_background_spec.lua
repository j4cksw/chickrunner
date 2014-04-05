describe("create_score_panel_background",function()
  local create_score_panel_background

  local fake_image = {"..."}
  setup(function()
    gameover_ui_config = {
      score_panel_background_image_path = "img/screen/gameover/bg.png",
      score_panel_background_image_y=448
    }

    display = {
      contentCenterX = 50,
      newImage = function()
        return fake_image
      end
    }
    spy.on(display, "newImage")

    create_score_panel_background = require("scene.game.gameover.create_score_panel_background")
  end)

  it("create score panel background image", function()
    create_score_panel_background.evaluate()

    assert.stub(display.newImage).was_called_with("img/screen/gameover/bg.png")
  end)

  it("should set x to center", function()
    create_score_panel_background.evaluate()

    assert.are.equal(fake_image.x, 50)
  end)
  
  it("should set y to 448", function()
    create_score_panel_background.evaluate()
    
    assert.are.equal(fake_image.y, 448)
  end)
end)
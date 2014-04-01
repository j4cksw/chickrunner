describe("create_score_panel_background",function()
  local create_score_panel_background
  
  setup(function()
    gameover_ui_config = {
      score_panel_background_image_path = "img/screen/gameover/bg.png"
    }
    create_score_panel_background = require("scene.game.gameover.create_score_panel_background")
  end)
  
  it("create score panel background image", function()
    create_score_panel_background.evaluate()
    
    assert.stub(display.newImage).was_called_with("img/screen/gameover/bg.png")
  end)
end)
describe("create_play_again_button", function()
  local create_play_again_button
  
  local fake_button = {}
  
  setup(function()
    display = {
      contentCenterX=500
    }
    
    gameover_ui_config = {
      play_again_button_image_path="img/ui/play.png",
      play_again_button_x = display.contentCenterX,
      play_again_button_y = 745
    }
    
    widget = {
      newButton = function()
        return fake_button
      end
    }
    spy.on(widget, "newButton")
    
    restart_game = {}
    stub(restart_game, "evaluate")
    
    play_ui_sound_button = {}
    stub(play_ui_sound_button, "evaluate")
    
    create_play_again_button = require("scene.game.gameover.create_play_again_button")
  end)
  
  it("should create play again button", function()
    create_play_again_button.evaluate()
    
    assert.stub(widget.newButton).
      was_called_with({
        id="play_again",
        defaultFile="img/ui/play.png",
        onRelease=restart_game.evaluate,
        onPress=play_ui_button_sound.evaluate
      })
  end)
  
  it("should set global variabla play_again_button", function()
    create_play_again_button.evaluate()
    
    assert.are.equal(play_again_button, fake_button)
  end)
  
  it("should set x to center of screen", function()
    create_play_again_button.evaluate()
    
    assert.are.equal(fake_button.x, display.contentCenterX)
  end)
  
  it("should set y to 745", function()
    create_play_again_button.evaluate()
    
    assert.are.equal(fake_button.y, 745)
  end)
end)
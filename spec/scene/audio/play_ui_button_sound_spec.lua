describe("play_ui_button_sound", function()
  local play_ui_button_sound
  
  setup(function()
    play_ui_button_sound = require("scene.audio.play_ui_button_sound")
    
    audio = {}
    stub(audio, "play")
  end)
  
  it("Play ui button aound", function()
    play_ui_button_sound.evaluate()
    
    assert.stub(audio.play).was_called_with(ui_menu_sound)
  end)
  
end)
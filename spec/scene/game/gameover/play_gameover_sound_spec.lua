describe("play_gameover_sound", function()
  local play_gameover_sound
  
  setup(function()
    play_gameover_sound = require("scene.game.gameover.play_gameover_sound")
  end)
  
  it("should play gameover sound", function()
    gameover_sound = {"gameoversound"}
    
    play_gameover_sound.evaluate()
    
    assert.stub(audio.play).was_called_with(gameover_sound)
  end)
end)
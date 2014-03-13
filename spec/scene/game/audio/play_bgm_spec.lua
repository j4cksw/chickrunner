describe("play_bgm", function()
  local play_bgm
  
  setup(function()
    audio = {
      play = function()end
    }
    spy.on(audio, "play")
    
    bgm_stream = {}
    
    play_bgm = require("scene.game.audio.play_bgm")
  end)
  
  it("Play bgm sound", function()
    -- when
    play_bgm.evaluate()
    -- then
    assert.stub(audio.play).was_called_with(bgm_stream, {channel=1, loops=-1})
  end)
end)
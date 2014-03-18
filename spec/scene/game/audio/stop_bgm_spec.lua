describe("stop_bgm", function()
  local stop_bgm
  
  setup(function()
    audio = {}
    stub(audio, "fadeOut")
    stub(audio, "stop")
    
    stop_bgm = require("scene.game.audio.stop_bgm")
  end)
  
  it("Fade out bgm", function()
    -- when
    stop_bgm.evaluate()
    -- then
    assert.stub(audio.fadeOut).was_called_with({channel=1,time=500})
  end)
  
  it("Stop channel 2", function()
    -- when
    stop_bgm.evaluate()
    -- then
    assert.stub(audio.stop).was_called_with({channel=2})
  end)
end)
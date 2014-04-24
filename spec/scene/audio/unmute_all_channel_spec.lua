describe("unmute_all_channel", function()
  local unmute_all_channel
  
  setup(function()
    audio = {}
    stub(audio, "setVolume")
    
    unmute_all_channel = require("scene.audio.unmute_all_channel")
  end)
  
  it("should set volume 1 to every channel", function()
    unmute_all_channel.evaluate()
    
    assert.stub(audio.setVolume).was_called_with(1, {channel=1})
  end)
end)
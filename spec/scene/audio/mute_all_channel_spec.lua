describe("mute_all_channel", function()
  local mute_all_channel
  
  setup(function()
    audio = {}
    stub(audio, "setVolume")
    
    mute_all_channel = require("scene.audio.mute_all_channel")
  end)
  
  it("should set volume of all channel to 0", function()
    mute_all_channel.evaluate()
    
    assert.stub(audio.setVolume).was_called_with(0, {channel=1})
  end)
end)
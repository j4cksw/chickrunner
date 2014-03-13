describe("load_audio", function()
  local load_audio
  
  setup(function()
    
    audio = {}
    stub(audio, "loadStream")
  
    load_audio = require("scene.game.audio.load_audio")
  end)
  
  it("Load background music", function()
    -- when
    load_audio.evaluate()
    -- then
    assert.stub(audio.loadStream).was_called_with("audio/bgsound.mp3")
  end)
  
  it("Load background explosion sound")
  
  it("Load explosion sound")
end)
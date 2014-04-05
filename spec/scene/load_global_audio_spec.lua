describe("load_global_audio", function()
  local load_global_audio
  
  setup(function()
    audio = {}
    stub(audio, "loadSound")
    
    load_global_audio = require("scene.load_global_audio")
  end)
  
  it("should load ui button sound", function()
    load_global_audio.evaluate()
    
    assert.stub(audio.loadSound).was_called_with("audio/ui_menu.mp3")
  end)
end)
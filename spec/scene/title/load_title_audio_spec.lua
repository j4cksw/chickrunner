describe("load_title_audio", function()
  local load_title_audio
  
  local fake_stream = {"..."}
  
  setup(function()
    audio = {
      loadStream = function()
        return fake_stream      
      end
    }
    spy.on(audio, "loadStream")
    
    load_title_audio = require("scene.title.load_title_audio")
  end)
  
  it("should load title bgm sound", function()
    load_title_audio.evaluate()
    
    assert.stub(audio.loadStream).was_called_with("audio/menu_bg.mp3")
  end)
  
  it("should set to global variable title_bgm", function()
    load_title_audio.evaluate()
    
    assert.are.equal(title_bgm, fake_stream)
  end)
end)
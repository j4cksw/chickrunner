describe("play_title_bgm", function()
  local play_title_bgm
  
  setup(function()
    audio = {}
    stub(audio, "play")
    
    title_bgm = {"title_bgm"}
    
    play_title_bgm = require("scene.title.play_title_bgm")
  end)
  
  it("should play title bgm", function()
    play_title_bgm.evaluate()
    
    assert.stub(audio.play).was_called_with(title_bgm)
  end)
end)
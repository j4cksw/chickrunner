describe("toggle_sound", function()
  local toggle_sound
  
  setup(function()
    unmute_all_channel = {}
    stub(unmute_all_channel, "evaluate")
    
    toggle_sound = require("scene.game.toggle_sound")
  end) 
  
  it("should mute audio when swith state is true", function()
    toggle_sound.evaluate(true)
    
    assert.stub(unmute_all_channel.evaluate).was_called()
  end)
  
  it("should save options when switch state is true")
  
  it("should unmute audio when switch state is false")
  
  
  
  it("should save options when switch state is false")
end)
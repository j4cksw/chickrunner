describe("play_box_explosion_sound", function()
  local play_box_explosion_sound
  
  setup(function()
    box_explosion_sound = {}
    
    audio = {}
    stub(audio, "play")
    
    play_box_explosion_sound = require("box.play_box_explosion_sound")
  end)
  
  it("Play audio with box_explosion_sound", function()
    -- when
    play_box_explosion_sound.evaluate()
    -- then
    assert.stub(audio.play).was_called_with(box_explosion_sound)
  end)
end)
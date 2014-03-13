describe("play_chasing_explosion_sound", function()
  local play_chasing_explosion_sound
  
  setup(function()
    audio = {}
    stub(audio, "play")
    
    chasing_explosion_sound = {}
  
    play_chasing_explosion_sound = require("explosion.play_chasing_explosion_sound")
  end)
  
  it("play chasing_explosion_sound", function()
    -- when
    play_chasing_explosion_sound.evaluate()
    -- then
    assert.stub(audio.play).was_called_with(chasing_explosion_sound)
  end)
end)
describe("play_chick_jump_sound_spec", function()
  local play_chick_jump_sound
  
  setup(function()
    audio = {}
    stub(audio, "play")
    
    jump_sound = {
      "jump_sound"
    }
    
    air_jump_sound = {
    }
    
    play_chick_jump_sound = require("scene.game.chick.play_chick_jump_sound")
  end)
  
  it("If this is the first jump then play jump sound", function()
    -- givem
    chick.jumpCount = 1
    -- when
    play_chick_jump_sound.evaluate()
    -- then
    assert.stub(audio.play).was_called_with(jump_sound)
  end)
  
  it("If this is second jump or later then play air jump sound", function()
    -- given
    chick.jumpCount = 2
    -- when
    play_chick_jump_sound.evaluate()
    -- then
    assert.stub(audio.play).was_called_with(air_jump_sound)
  end)
end)
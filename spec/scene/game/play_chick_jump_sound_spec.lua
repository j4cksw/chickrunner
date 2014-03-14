describe("play_chick_jump_sound_spec", function()
  local play_chick_jump_sound
  
  setup(function()
    audio = {}
    stub(audio, "play")
    
    jump_sound = {}
  end)
  
  it("Play jump sound", function()
    -- when
    chick_jump.evaluate()
    -- then
    assert.stub(audio.play).was_called_with(jump_sound)
  end)
end)
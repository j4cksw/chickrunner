play_chick_jump_sound = {}

function play_chick_jump_sound.evaluate()
  if chick.jumpCount == 1 then
    audio.play(jump_sound)
  else
    audio.play(air_jump_sound)
  end
end

return play_chick_jump_sound
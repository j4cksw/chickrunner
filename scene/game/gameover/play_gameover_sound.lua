play_gameover_sound = {}

function play_gameover_sound.evaluate()
  audio.play(gameover_sound, {channel=7})
end

return play_gameover_sound
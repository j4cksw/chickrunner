play_bgm = {}

function play_bgm.evaluate()
  audio.rewind(bgm_stream)
  audio.play(bgm_stream, {channel=1, loops=-1})
  audio.setVolume(1, {channel=1})
  audio.play(chasing_explosion_sound, {channel=2, loops=-1})
end

return play_bgm
play_bgm = {}

function play_bgm.evaluate()
  audio.play(bgm_stream, {channel=1, loops=-1})
end

return play_bgm
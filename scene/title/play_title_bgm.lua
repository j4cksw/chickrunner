play_title_bgm = {}

function play_title_bgm.evaluate()
  audio.play(title_bgm, {channel=7, loops=-1})
end

return play_title_bgm
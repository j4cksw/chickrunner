stop_bgm = {}

function stop_bgm.evaluate()
  audio.fadeOut({channel=1, time=500})
end

return stop_bgm
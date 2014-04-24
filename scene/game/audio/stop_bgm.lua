stop_bgm = {}

function stop_bgm.evaluate()
  audio.stop({channel=1})
  audio.stop({channel=2})
end

return stop_bgm
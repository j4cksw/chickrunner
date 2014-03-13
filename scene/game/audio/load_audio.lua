load_audio = {}

function load_audio.evaluate()
  bgm_stream = audio.loadStream("audio/bgsound.mp3")
  chase_explosion_sound = audio.loadSound("audio/booming.mp3")
end

return load_audio
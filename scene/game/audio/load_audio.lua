load_audio = {}

function load_audio.evaluate()
  bgm_stream = audio.loadStream("audio/bgsound.mp3")
  chasing_explosion_sound = audio.loadSound("audio/booming.mp3")
  box_explosion_sound = audio.loadSound("audio/bomb_hitbox.mp3")
end

return load_audio
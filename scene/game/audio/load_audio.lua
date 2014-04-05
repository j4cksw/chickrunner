load_audio = {}

function load_audio.evaluate()
  bgm_stream = audio.loadStream("audio/bgsound.mp3")
  chasing_explosion_sound = audio.loadSound("audio/booming.mp3")
  box_explosion_sound = audio.loadSound("audio/bomb_hitbox.mp3")
  jump_sound = audio.loadSound("audio/jump1.mp3")
  air_jump_sound = audio.loadSound("audio/jump2.mp3")
  chick_ready_sound = audio.loadSound("audio/ready_sound.mp3")
  gameover_sound = audio.loadSound("audio/gameover.mp3")
end

return load_audio
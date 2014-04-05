load_global_audio = {}

audio = audio or require("audio")

function load_global_audio.evaluate()
  ui_menu_sound = audio.loadSound("audio/ui_menu.mp3")
end

return load_global_audio
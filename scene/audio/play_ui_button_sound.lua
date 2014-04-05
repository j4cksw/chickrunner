play_ui_button_sound = {}

audio = audio or require("audio")

function play_ui_button_sound.evaluate()
  audio.play(ui_menu_sound, {channel=6})
end

return play_ui_button_sound
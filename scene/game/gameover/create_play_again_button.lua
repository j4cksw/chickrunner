create_play_again_button = {}

widget = widget or require("widget")
gameover_ui_config = gameover_ui_config or require("config.gameover_ui_config")

function create_play_again_button.evaluate()
  play_again_button = widget.newButton({
        id="play_again",
        defaultFile=gameover_ui_config.play_again_button_image_path,
      })
  play_again_button.x = gameover_ui_config.play_again_button_x
  play_again_button.y = gameover_ui_config.play_again_button_y
end

return create_play_again_button
create_play_again_button = {}

widget = widget or require("widget")
gameover_ui_config = gameover_ui_config or require("config.gameover_ui_config")
restart_game = restart_game or require("scene.game.restart_game")
play_ui_button_sound  = play_ui_button_sound or require("scene.audio.play_ui_button_sound")

function create_play_again_button.evaluate()
  play_again_button = widget.newButton({
        id="play_again",
        defaultFile=gameover_ui_config.play_again_button_image_path,
        overFile=gameover_ui_config.play_again_button_down_image_path,
        onRelease=restart_game.evaluate,
        onPress=play_ui_button_sound.evaluate
      })
  play_again_button.x = gameover_ui_config.play_again_button_x
  play_again_button.y = gameover_ui_config.play_again_button_y
end

return create_play_again_button
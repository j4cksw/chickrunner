create_leaderboard_button = {}

widget = widget or require("widget")
play_ui_button_sound = play_ui_button_sound or require("scene.audio.play_ui_button_sound")

function create_leaderboard_button.evaluate()
  widget.newButton({
    defaultFile="img/ui/rank.png",
    overFile="img/ui/rank_down.png",
    onPress=play_ui_button_sound.evaluate
  })
end

return create_leaderboard_button
create_leaderboard_button = {}

widget = widget or require("widget")
play_ui_button_sound = play_ui_button_sound or require("scene.audio.play_ui_button_sound")
insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")

function create_leaderboard_button.evaluate()
  local leaderboard_button = widget.newButton({
    defaultFile="img/ui/rank.png",
    overFile="img/ui/rank_down.png",
    onPress=play_ui_button_sound.evaluate
  })
  insert_to_current_view_group.evaluate(leaderboard_button)
  leaderboard_button.y = 890
  leaderboard_button.x = 251
end

return create_leaderboard_button
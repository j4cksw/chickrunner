create_leaderboard_button = {}

widget = widget or require("widget")
play_ui_button_sound = play_ui_button_sound or require("scene.audio.play_ui_button_sound")
insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")
title_scene_config = title_scene_config or require("config.title_scene_config")
gameNetwork = gameNetwork or require("gameNetwork")

function create_leaderboard_button.evaluate()
  local leaderboard_button = widget.newButton({
    defaultFile=title_scene_config.leaderboard_button_default_file,
    overFile=title_scene_config.leaderbaord_button_over_file,
    onPress=play_ui_button_sound.evaluate,
    onRelease=show_leaderboard
  })
  insert_to_current_view_group.evaluate(leaderboard_button)
  leaderboard_button.y = title_scene_config.leaderboard_button_y
  leaderboard_button.x = title_scene_config.leaderboard_button_x
end

function show_leaderboard()
  gameNetwork.show("leaderboards", {
    leaderboard = {
      timeScope="Week",
      category="runchickenrun"
    }
  })
end

return create_leaderboard_button
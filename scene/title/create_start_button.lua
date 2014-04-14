create_start_button = {}

widget = widget or require("widget")
insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")
transit_to_game_scene = transit_to_game_scene or require("scene.title.transit_to_game_scene")
play_ui_button_sound = play_ui_button_sound or require("scene.audio.play_ui_button_sound")
title_scene_config = title_scene_config or require("config.title_scene_config")

function create_start_button.evaluate()
  local start_button = widget.newButton({
    id = "start",
    defaultFile = title_scene_config.start_button_default_file,
    overFile=title_scene_config.start_button_over_file,
    onRelease = transit_to_game_scene.evaluate,
    onPress = play_ui_button_sound.evaluate
  })
  start_button.x = title_scene_config.start_button_x
  start_button.y = title_scene_config.start_button_y
  
  insert_to_current_view_group.evaluate(start_button)
end

return create_start_button
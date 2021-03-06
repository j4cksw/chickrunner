create_rate_it_button = {}

widget = widget or require("widget")
insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")
title_scene_config = title_scene_config or require("config.title_scene_config")
play_ui_button_sound = play_ui_button_sound or require("scene.audio.play_ui_button_sound")
rate_link = rate_link or require("common.rate_link")

function create_rate_it_button.evaluate()
  local rate_it_button = widget.newButton({
    id="rate-it",
    defaultFile=title_scene_config.rate_it_button_default_file,
    overFile=title_scene_config.rate_it_button_over_file,
    onPress=play_ui_button_sound.evaluate,
    onRelease = rate_link.open
  })
  
  rate_it_button.x = title_scene_config.rate_it_button_x
  rate_it_button.y = title_scene_config.rate_it_button_y
  
  insert_to_current_view_group.evaluate(rate_it_button)
end

return create_rate_it_button
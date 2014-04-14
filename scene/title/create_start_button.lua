create_start_button = {}

widget = widget or require("widget")
insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")
transit_to_game_scene = transit_to_game_scene or require("scene.title.transit_to_game_scene")

function create_start_button.evaluate()
  local start_button = widget.newButton({
    id = "start",
    defaultFile = "img/ui/start.png",
    overFile="img/ui/start_down.png",
    onRelease = transit_to_game_scene.evaluate,
    onPress = play_ui_button_sound.evaluate
  })
  start_button.x = display.contentCenterX
  start_button.y = 740
  
  insert_to_current_view_group.evaluate(start_button)
end

return create_start_button
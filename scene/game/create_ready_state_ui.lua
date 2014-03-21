create_ready_state_ui = {}

create_tap_to_start_button = create_tap_to_start_button or require("scene.game.create_tap_to_start_button")
get_fontname_by_platform = get_fontname_by_platform or require("utils.get_fontname_by_platform")


function create_ready_state_ui.evaluate()
  local tap_to_start_button = create_tap_to_start_button.evaluate()
  local first_text = display.newText("TO", display.contentCenterX, tap_to_start_button.y+120, get_fontname_by_platform.evaluate(), 32)
  
  ready_state_ui_group = display.newGroup()
  ready_state_ui_group:insert(tap_to_start_button)
  ready_state_ui_group:insert(first_text)
end

return create_ready_state_ui
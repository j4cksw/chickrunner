create_ready_state_ui = {}

create_tap_to_start_button = create_tap_to_start_button or require("scene.game.create_tap_to_start_button")
get_fontname_by_platform = get_fontname_by_platform or require("utils.get_fontname_by_platform")


function create_ready_state_ui.evaluate()
  create_tap_to_start_button.evaluate()
  display.newText("TO", display.contentCenterX, tap_to_start_button.y+20, get_fontname_by_platform.evaluate(), 32)
end

return create_ready_state_ui
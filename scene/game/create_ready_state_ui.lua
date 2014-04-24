create_ready_state_ui = {}

create_tap_to_start_button = create_tap_to_start_button or require("scene.game.create_tap_to_start_button")
get_fontname_by_platform = get_fontname_by_platform or require("utils.get_fontname_by_platform")
game_scene_config = game_scene_config or require("config.game_scene_config")
create_ready_first_text = create_ready_first_text or require("scene.game.create_ready_first_text")
create_sound_toggle_switch = create_sound_toggle_switch or require("scene.game.create_sound_toggle_switch")
create_controller_rect = create_controller_rect or require("scene.game.create_controller_rect")

function create_ready_state_ui.evaluate()
  
  local tap_to_start_button = create_tap_to_start_button.evaluate()
  local first_text = create_ready_first_text.evaluate(tap_to_start_button)
  local second_text = display.newText("START", display.contentCenterX, first_text.y+50, get_fontname_by_platform.evaluate(), 48)
  local tutorial_image = display.newImage("img/screen/ready/tutorial.png")
  tutorial_image.x = tap_to_start_button.x+200
  tutorial_image.y = 1000
  local controller_rectangle = create_controller_rect.evaluate()
  
  ready_state_ui_group = display.newGroup()
  ready_state_ui_group:insert(tap_to_start_button)
  ready_state_ui_group:insert(first_text)
  ready_state_ui_group:insert(second_text)
  ready_state_ui_group:insert(tutorial_image)
  ready_state_ui_group:insert(controller_rectangle)
  ready_state_ui_group.y = ready_state_ui_group.y-180
  
  create_sound_toggle_switch.evaluate()
end

return create_ready_state_ui
create_ready_state_ui = {}

create_tap_to_start_button = create_tap_to_start_button or require("scene.game.create_tap_to_start_button")

function create_ready_state_ui.evaluate()
  create_tap_to_start_button.evaluate()
end

return create_ready_state_ui
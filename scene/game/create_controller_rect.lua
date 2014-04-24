create_controller_rect = {}

ready_state_tap_listener = ready_state_tap_listener or require("scene.game.ready_state_tap_listener")

function create_controller_rect.evaluate()
  local controller_rectangle = display.newRect(display.contentCenterX,
    display.contentCenterY,
    display.viewableContentWidth,
    display.viewableContentHeight+180)
  controller_rectangle:setFillColor(0,0.01)
  controller_rectangle:addEventListener("tap", ready_state_tap_listener.evaluate)
  return controller_rectangle
end

return create_controller_rect
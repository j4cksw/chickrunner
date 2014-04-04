create_tap_to_start_button = {}

function create_tap_to_start_button.evaluate()
  local tap_to_start_button = display.newImage("img/screen/ready/tap.png")
  tap_to_start_button.x = display.contentCenterX
  tap_to_start_button.y = display.contentCenterY
  return tap_to_start_button
end

return create_tap_to_start_button
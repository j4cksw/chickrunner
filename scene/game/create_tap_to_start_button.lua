create_tap_to_start_button = {}

function create_tap_to_start_button.evaluate()
  local tap_button = display.newImage("img/screen/reay/tap.png")
  tap_button.x = display.contentCenterX
  tap_button.y = display.contentCenterY
end

return create_tap_to_start_button
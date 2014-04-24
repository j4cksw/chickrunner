create_sound_toggle_switch = {}

widget = widget or require("widget")
graphics = graphics or require("graphics")

function create_sound_toggle_switch.evaluate()
  local sheet = graphics.newImageSheet("img/ui/sound_button.png", {
    width=69,
    height=63,
    numFrames=4
  })
  widget.newSwitch({
    x = 680,
    y = 77,
    style = "checkbox",
    sheet = sheet,
    width=69,
    height=63,
    frameOff=1,
    frameOn=3
  })
end

return create_sound_toggle_switch
create_sound_toggle_switch = {}

widget = widget or require("widget")

function create_sound_toggle_switch.evaluate()
  widget.newSwitch({
    left = 50,
    top = 50,
    style = "checkbox"
  })
end

return create_sound_toggle_switch
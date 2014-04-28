create_sound_toggle_switch = {}

widget = widget or require("widget")
graphics = graphics or require("graphics")
toggle_sound = toggle_sound or require("scene.game.audio.toggle_sound")

function create_sound_toggle_switch.evaluate()
  local sheet = graphics.newImageSheet("img/ui/sound_button.png", {
    width=69,
    height=63,
    numFrames=4
  })
  local switch = widget.newSwitch({
    x = 680,
    y = 350,
    style = "checkbox",
    sheet = sheet,
    width=69,
    height=63,
    frameOn=1,
    frameOff=3,
    onRelease=onSoundSwitchReleased,
    initialSwitchState=options.sound_initial_state
  })
  
  switch:addEventListener("tap", function(event)
    return true
  end)
  return switch
end

function onSoundSwitchReleased(event)
  toggle_sound.evaluate(event.target.isOn)
end

return create_sound_toggle_switch
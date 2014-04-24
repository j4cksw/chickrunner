create_sound_toggle_switch = {}

widget = widget or require("widget")
graphics = graphics or require("graphics")
mute_all_channel = mute_all_channel or require("scene.audio.mute_all_channel")
unmute_all_channel = unmute_all_channel or require("scene.audio.unmute_all_channel")

function create_sound_toggle_switch.evaluate()
  local sheet = graphics.newImageSheet("img/ui/sound_button.png", {
    width=69,
    height=63,
    numFrames=4
  })
  local switch = widget.newSwitch({
    x = 680,
    y = 220,
    style = "checkbox",
    sheet = sheet,
    width=69,
    height=63,
    frameOff=1,
    frameOn=3,
    onRelease=onSoundSwitchReleased
  })
  switch:addEventListener("tap", function(event)
    return true
  end)
  return switch
end

function onSoundSwitchReleased(event)
  is_sound_enabled = event.target.isOn
  if is_sound_enabled then
    mute_all_channel.evaluate()
  else
    unmute_all_channel.evaluate()
  end
end

return create_sound_toggle_switch
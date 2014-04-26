toggle_sound = {}

unmute_all_channel = unmute_all_channel or require("scene.audio.unmute_all_channel")
mute_all_channel = mute_all_channel or require("scene.audio.mute_all_channel")
save_options = save_options or require("common.save_options")

function toggle_sound.evaluate(sound_state)
  if sound_state then
    unmute_all_channel.evaluate()
  else
    mute_all_channel.evaluate()
  end

  options.sound_initial_state = sound_state
  save_options.evaluate()
end

return toggle_sound
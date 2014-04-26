toggle_sound = {}

unmute_all_channel = unmute_all_channel or require("scene.audio.unmute_all_channel")
save_options = save_options or require("common.save_options")

function toggle_sound.evaluate(sound_state)
  unmute_all_channel.evaluate()
  save_options.evaluate()
end

return toggle_sound
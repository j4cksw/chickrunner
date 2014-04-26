toggle_sound = {}

unmute_all_channel = unmute_all_channel or require("scene.audio.unmute_all_channel")

function toggle_sound.evaluate(sound_state)
  unmute_all_channel.evaluate()
end

return toggle_sound
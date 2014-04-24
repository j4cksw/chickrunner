mute_all_channel = {}

audio = audio or require("audio")

function mute_all_channel.evaluate()
  audio.setVolume(0, {channel=1})
end

return mute_all_channel
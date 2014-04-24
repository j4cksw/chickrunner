mute_all_channel = {}

audio = audio or require("audio")

function mute_all_channel.evaluate()
  for i = 1,10 do
    audio.setVolume(0, {channel=i})
  end
end

return mute_all_channel
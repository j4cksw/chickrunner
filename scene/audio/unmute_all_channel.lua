unmute_all_channel = {}

audio = audio or require("audio")

function unmute_all_channel.evaluate()
  for i =1,32 do
    audio.setVolume(1, {channel=i})
  end
end

return unmute_all_channel
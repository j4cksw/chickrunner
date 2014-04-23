display.setStatusBar( display.HiddenStatusBar )

load_global_audio = require("scene.load_global_audio")
load_global_audio.evaluate()

initialize_ads = initialize_ads or require("common.ads.initialize_ads")
initialize_ads.evaluate()

print("Game center initialized.")
gameNetwork = require("gameNetwork")
gameNetwork.init("gamecenter", gamecenterInitCallback)

function gamecenterInitCallback(event)
	print("Game center initialized.")
	print(event.data)
end

storyboard = storyboard or require("storyboard")
storyboard.gotoScene("common.splash.splash_scene") 
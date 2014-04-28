display.setStatusBar( display.HiddenStatusBar )

require("common.options_initializer").initialize()
require("scene.game.audio.toggle_sound").evaluate(options.sound_initial_state)

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
display.setStatusBar( display.HiddenStatusBar )

load_global_audio = require("scene.load_global_audio")
load_global_audio.evaluate()

storyboard = storyboard or require("storyboard")
storyboard.gotoScene("common.splash.splash_scene")
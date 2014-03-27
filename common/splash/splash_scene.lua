storyboard = storyboard or require("storyboard")

local scene = storyboard.newScene("splash_scene")

function scene:createScene(event)
  display.newImageRect("img/splash/kongDev.jpg", 600, 488)
end

scene:addEventListener("createScene", scene);

return scene
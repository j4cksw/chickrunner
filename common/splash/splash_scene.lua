storyboard = storyboard or require("storyboard")

local scene = storyboard.newScene("splash_scene")

function scene:createScene(event)
  local logo = display.newImageRect("img/splash/kongDev.jpg", 600, 488)
  logo.x = display.contentCenterX
  logo.y = display.contentCenterY
end

scene:addEventListener("createScene", scene);

return scene
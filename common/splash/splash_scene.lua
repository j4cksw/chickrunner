storyboard = storyboard or require("storyboard")

transit_after_splash_scene = transit_after_splash_scene or require("common.splash.transit_after_splash_scene")

local scene = storyboard.newScene("splash_scene")

function scene:createScene(event)
  self.logo = display.newImageRect("img/splash/logo.jpg", 600, 488)
  self.logo.x = display.contentCenterX
  self.logo.y = display.contentCenterY
  self.logo.alpha = 0
  self.view:insert(self.logo)
end

function scene:enterScene(event)
  transition.to(self.logo, {time = 1000 , xScale = 1, yScale = 1, alpha = 1})
  timer.performWithDelay(2000, transit_after_splash_scene.evaluate)
end

scene:addEventListener("createScene", scene);
scene:addEventListener("enterScene", scene);
return scene
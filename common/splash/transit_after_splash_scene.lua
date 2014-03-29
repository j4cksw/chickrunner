transit_after_splash_scene = {}

function transit_after_splash_scene.evaluate()
  storyboard.gotoScene("scene.title.title_scene",{
      effect = "fade",
      time = 500})
end

return transit_after_splash_scene
storyboard = storyboard or require("storyboard")

set_current_view_group = set_current_view_group or require("scene.set_current_view_group")
create_background_image = create_background_image or require("scene.create_background_image")

local title_scene = storyboard.newScene("title_scene")

function title_scene:createScene(event)
  set_current_view_group.evaluate(self.view)
  create_background_image.evaluate()
end

return title_scene

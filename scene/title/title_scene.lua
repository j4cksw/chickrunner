storyboard = storyboard or require("storyboard")

widget = widget or require("widget")
set_current_view_group = set_current_view_group or require("scene.set_current_view_group")
create_background_image = create_background_image or require("scene.create_background_image")
insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")

local title_scene = storyboard.newScene("title_scene")

function title_scene:createScene(event)
  set_current_view_group.evaluate(self.view)
  create_background_image.evaluate()
  local start_button = widget.newButton({
    id = "start",
    defaultFile = "img/ui/start.png",
    onRelease = self.go_to_game_scene
  })
  start_button.x = display.contentCenterX
  start_button.y = display.contentCenterY
  insert_to_current_view_group.evaluate(start_button)
  
  local logo_image = display.newImage("img/screen/title/logo.png")
  logo_image.x = display.contentCenterX
end

function title_scene.go_to_game_scene()
  storyboard.gotoScene("scene.game.game_scene",{
    effect = "fade",
    time = 500})
end

title_scene:addEventListener( "createScene", title_scene )

return title_scene
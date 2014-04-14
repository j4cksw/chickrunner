storyboard = storyboard or require("storyboard")

widget = widget or require("widget")
set_current_view_group = set_current_view_group or require("scene.set_current_view_group")
create_background_image = create_background_image or require("scene.create_background_image")
create_ground_image_sheet = create_ground_image_sheet or require("scene.create_ground_image_sheet")
create_start_button = create_start_button or require("scene.title.create_start_button")
create_logo_image = create_logo_image or require("scene.title.create_logo_image")
initialize_ground = initialize_ground or require("ground.initialize_ground")
load_title_audio = load_title_audio or require("scene.title.load_title_audio")
play_title_bgm = play_title_bgm or require("scene.title.play_title_bgm")

local title_scene = storyboard.newScene("title_scene")

function title_scene:createScene(event)
  load_title_audio.evaluate()
  play_title_bgm.evaluate()
  set_current_view_group.evaluate(self.view)
  create_background_image.evaluate()
  create_start_button.evaluate()
  create_logo_image.evaluate()
  create_ground_image_sheet.evaluate()
  initialize_ground.evaluate()
end

title_scene:addEventListener( "createScene", title_scene )

return title_scene
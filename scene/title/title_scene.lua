storyboard = storyboard or require("storyboard")

widget = widget or require("widget")
set_current_view_group = set_current_view_group or require("scene.set_current_view_group")
create_background_image = create_background_image or require("scene.create_background_image")
insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")
create_ground_image_sheet = create_ground_image_sheet or require("scene.create_ground_image_sheet")
initialize_ground = initialize_ground or require("ground.initialize_ground")
show_ads = show_ads or require("common.ads.show_ads")
hide_ads = hide_ads or require("common.ads.hide_ads")
play_ui_button_sound  = play_ui_button_sound or require("scene.audio.play_ui_button_sound")
load_title_audio = load_title_audio or require("scene.title.load_title_audio")

local title_scene = storyboard.newScene("title_scene")

function title_scene:createScene(event)
  load_title_audio.evaluate()
  set_current_view_group.evaluate(self.view)
  create_background_image.evaluate()
  local start_button = widget.newButton({
    id = "start",
    defaultFile = "img/ui/start.png",
    onRelease = self.go_to_game_scene,
    onPress = play_ui_button_sound.evaluate
  })
  start_button.x = display.contentCenterX
  start_button.y = 740
  
  insert_to_current_view_group.evaluate(start_button)
  
  local logo_image = display.newImage("img/screen/title/logo.png")
  logo_image.x = display.contentCenterX
  logo_image.y = 370
  insert_to_current_view_group.evaluate(logo_image)
  
  create_ground_image_sheet.evaluate()
  initialize_ground.evaluate()
end

function title_scene.go_to_game_scene()
  hide_ads.evaluate()
  storyboard.gotoScene("scene.game.game_scene",{
    effect = "fade",
    time = 500})
end

title_scene:addEventListener( "createScene", title_scene )

return title_scene
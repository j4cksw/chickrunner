storyboard = storyboard or require("storyboard")

initialize_game_stat = initialize_game_stat or require("scene.game.initialize_game_stat")
initialize_physics = initialize_physics or require("scene.initialize_physics")
create_ground_image_sheet = create_ground_image_sheet or require("scene.create_ground_image_sheet")
create_explosion_image_sheet = create_explosion_image_sheet or require("explosion.create_explosion_image_sheet")
set_current_view_group = set_current_view_group or require("scene.set_current_view_group")
create_background_image = create_background_image or require("scene.create_background_image")
create_chick_image_sheet = create_chick_image_sheet or require("chick.create_chick_image_sheet")
create_box_image_sheet = create_box_image_sheet or require("box.create_box_image_sheet")
create_score_text = create_score_text or require("scene.game.score.create_score_text")
load_audio = load_audio or require("scene.game.audio.load_audio")
enter_ready_state = enter_ready_state or require("scene.game.enter_ready_state")

local scene = storyboard.newScene("game_scene")

function scene:createScene(event)
  initialize_game_stat.evaluate()
  load_audio.evaluate()
	create_ground_image_sheet.evaluate()
	create_explosion_image_sheet.evaluate()
	create_chick_image_sheet.evaluate()
	create_box_image_sheet.evaluate()
	initialize_physics.evaluate()
	set_current_view_group.evaluate(self.view)
  create_background_image.evaluate()
  create_score_text.evaluate()
end

function scene:enterScene(event)
  print("enter scene")
	enter_ready_state.evaluate()
end


scene:addEventListener( "createScene", scene )
scene:addEventListener( "enterScene", scene )

return scene
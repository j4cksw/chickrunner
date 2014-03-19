storyboard = storyboard or require("storyboard")

initialize_game_stat = initialize_game_stat or require("scene.game.initialize_game_stat")
initialize_physics = initialize_physics or require("scene.initialize_physics")
initialize_ground = initialize_ground or require("ground.initialize_ground")
create_ground_image_sheet = create_ground_image_sheet or require("scene.create_ground_image_sheet")
create_explosion_image_sheet = create_explosion_image_sheet or require("explosion.create_explosion_image_sheet")
set_current_view_group = set_current_view_group or require("scene.set_current_view_group")
create_background_image = create_background_image or require("scene.create_background_image")
create_chick_image_sheet = create_chick_image_sheet or require("chick.create_chick_image_sheet")
initialize_chick = initialize_chick or require("scene.initialize_chick")
create_box_image_sheet = create_box_image_sheet or require("box.create_box_image_sheet")
create_score_text = create_score_text or require("scene.game.score.create_score_text")
load_audio = load_audio or require("scene.game.audio.load_audio")
start_game = start_game or require("scene.game.explode_before_start")

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
	initialize_ground.evaluate()
	initialize_chick.evaluate()
	Runtime:addEventListener( "tap", explode_before_start.evaluate)
end


scene:addEventListener( "createScene", scene )
scene:addEventListener( "enterScene", scene )

return scene
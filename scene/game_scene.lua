storyboard = storyboard or require("storyboard")

initialize_physics = initialize_physics or require("scene.initialize_physics")
initialize_ground = initialize_ground or require("ground.initialize_ground")
create_ground_image_sheet = create_ground_image_sheet or require("scene.create_ground_image_sheet")
create_explosion_image_sheet = create_explosion_image_sheet or require("explosion.create_explosion_image_sheet")
set_current_view_group = set_current_view_group or require("scene.set_current_view_group")
create_background_image = create_background_image or require("scene.create_background_image")
create_chasing_explosion = create_chasing_explosion or require("scene.create_chasing_explosion")
create_chick_image_sheet = create_chick_image_sheet or require("chick.create_chick_image_sheet")
initialize_chick = initialize_chick or require("scene.initialize_chick")
game_scene_config = game_scene_config or require("config.game_scene_config")
start_chasing_explosion_timer = start_chasing_explosion_timer or require("scene.start_chasing_explosion_timer")
chick_jump = chick_jump or require("scene.chick_jump")
create_box_image_sheet = create_box_image_sheet or require("box.create_box_image_sheet")
generate_box = generate_box or require("scene.game.generate_box")
update_stage = update_stage or require("scene.game.update_stage")

local scene = storyboard.newScene("game_scene")

function scene:createScene(event)
	create_ground_image_sheet.evaluate()
	create_explosion_image_sheet.evaluate()
	create_chick_image_sheet.evaluate()
	create_box_image_sheet.evaluate()
	initialize_physics.evaluate()
end

function scene:enterScene(event)
	set_current_view_group.evaluate(self.view)
	create_background_image.evaluate()
	initialize_ground.evaluate()
	create_chasing_explosion.evaluate()
	initialize_chick.evaluate()
	start_chasing_explosion_timer.evaluate()
	generate_box.evaluate()
	
	Runtime:addEventListener( "enterFrame", update_stage.evaluate )
	Runtime:addEventListener( "tap", chick_jump.evaluate)
end


scene:addEventListener( "createScene", scene )
scene:addEventListener( "enterScene", scene )

return scene
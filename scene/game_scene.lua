storyboard = storyboard or require("storyboard")

initialize_ground = initialize_ground or require("ground.initialize_ground")
move_ground = move_ground or require("ground.move_ground")
create_ground_image_sheet = create_ground_image_sheet or require("scene.create_ground_image_sheet")
create_explosion_image_sheet = create_explosion_image_sheet or require("explosion.create_explosion_image_sheet")
set_current_view_group = set_current_view_group or require("scene.set_current_view_group")
create_background_image = create_background_image or require("scene.create_background_image")

local scene = storyboard.newScene("game_scene")

function scene:createScene(event)
	create_ground_image_sheet.evaluate()
	create_explosion_image_sheet.evaluate()
end

function scene:enterScene(event)
	set_current_view_group.evaluate(self.view)
	create_background_image.evaluate()
	initialize_ground.evaluate()
	Runtime:addEventListener( "enterFrame", move_ground.evaluate )
end

scene:addEventListener( "createScene", scene )
scene:addEventListener( "enterScene", scene )

return scene
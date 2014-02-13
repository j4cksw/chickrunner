storyboard = storyboard or require("storyboard")

create_ground_block = create_ground_block or require("scene.create_ground_block")
create_ground_image_sheet = create_ground_image_sheet or require("scene.create_ground_image_sheet")
set_current_view_group = set_current_view_group or require("scene.set_current_view_group")

local scene = storyboard.newScene("game_scene")

function scene:createScene(event)
	create_ground_image_sheet.evaluate()
end

function scene:enterScene(event)
	set_current_view_group.evaluate(self.view)
	create_ground_block.evaluate()
end

scene:addEventListener( "createScene", scene )
scene:addEventListener( "enterScene", scene )

return scene
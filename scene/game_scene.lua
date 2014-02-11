storyboard = storyboard or require("storyboard")

show_ground_block = show_ground_block or require("scene.show_ground_block")
local scene = storyboard.newScene("game_scene")



function scene:createScene(event)
	show_ground_block.evaluate()
end

return scene
describe("scene.game_scene", function ( ... )
	local game_scene

	local scene = {}

	setup(function ( ... )
		storyboard = {
			newScene = function ( ... )
				return scene
			end
		}

		show_ground_block = {}
		stub(show_ground_block, "evaluate")

		game_scene = require("scene.game_scene")
	end)

	it("Evaluate show_ground_block in createScene", function ( ... )
		-- when
		game_scene:createScene(event)
		-- then
		assert.stub(show_ground_block.evaluate).was_called()
	end)
end)
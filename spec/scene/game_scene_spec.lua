describe("scene.game_scene", function ( ... )
	local game_scene

	local scene = { addEventListener = function ( ... )
		-- body
	end}

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

	it("Evalaute create_ground_sprites in createScene")

	it("Evaluate set_current_view with self.view in enterScene")

	it("Evaluate show_ground_block in enterScene", function ( ... )
		-- when
		game_scene:enterScene(event)
		-- then
		assert.stub(show_ground_block.evaluate).was_called()
	end)
end)
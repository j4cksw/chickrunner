describe("scene.game_scene", function ( ... )
	local game_scene

	local scene = { 
		addEventListener = function ( ... )
			-- body
		end,
		view = {}
	}

	setup(function ( ... )
		storyboard = {
			newScene = function ( ... )
				return scene
			end
		}

		show_ground_block = {}
		stub(show_ground_block, "evaluate")

		create_ground_image_sheet = {}
		stub(create_ground_image_sheet, "evaluate")

		set_current_view_group = {}
		stub(set_current_view_group, "evaluate")

		game_scene = require("scene.game_scene")
	end)

	it("Evalaute create_ground_image_sheet in createScene", function ( ... )
		-- when
		game_scene:createScene(event)
		-- then
		assert.stub(create_ground_image_sheet.evaluate).was_called()
	end)

	it("Evaluate set_current_view with self.view in enterScene", function ( ... )
		-- when
		game_scene:enterScene()
		-- then
		assert.stub(set_current_view_group.evaluate).was_called_with(scene.view)
	end)

	it("Evaluate show_ground_block in enterScene", function ( ... )
		-- when
		game_scene:enterScene(event)
		-- then
		assert.stub(show_ground_block.evaluate).was_called()
	end)
end)
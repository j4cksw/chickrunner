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

		initialize_ground = {}
		stub(initialize_ground, "evaluate")

		create_ground_image_sheet = {}
		stub(create_ground_image_sheet, "evaluate")
		
		create_explosion_image_sheet = {}
		stub(create_explosion_image_sheet, "evaluate")
		
		create_background_image = {}
		stub(create_background_image, "evaluate")
		
		create_explosion_sprite = {}
		stub(create_explosion_sprite, "evaluate")

		set_current_view_group = {}
		stub(set_current_view_group, "evaluate")

		Runtime = {}
		stub(Runtime, "addEventListener")

		move_ground = {}
		stub(move_ground, "evaluate")

		game_scene = require("scene.game_scene")
	end)

	it("Evalaute create_ground_image_sheet in createScene", function ( ... )
		-- when
		game_scene:createScene(event)
		-- then
		assert.stub(create_ground_image_sheet.evaluate).was_called()
	end)
	
	it("Evaluating create_explostion_image_sheet", function()
	 -- when
	 game_scene:createScene(event)
	 -- then
	 assert.stub(create_explosion_image_sheet.evaluate).was_called()
	end)
	
	it("Evaluating create_background_image in enterScene", function()
	 -- when
	 game_scene:enterScene(event)
	 -- then
	 assert.stub(create_background_image.evaluate).was_called()
	end)

	it("Evaluate set_current_view with self.view in enterScene", function ( ... )
		-- when
		game_scene:enterScene()
		-- then
		assert.stub(set_current_view_group.evaluate).was_called_with(scene.view)
	end)

	it("Evaluate initialize_ground in enterScene", function ( ... )
		-- when
		game_scene:enterScene(event)
		-- then
		assert.stub(initialize_ground.evaluate).was_called()
	end)
	
	it("Evaluate create_explosion_sprite in enterScene", function()
	 -- when
	 game_scene:enterScene(event)
	 -- then
	 assert.stub(create_explosion_sprite.evaluate).was_called()
	end)

	it("Add enterFrame event lister to Runtime in enterScene", function ( ... )
		-- when
		game_scene:enterScene(event)
		-- then
		assert.stub(Runtime.addEventListener).was_called_with(Runtime, "enterFrame", move_ground.evaluate)
	end)
	
end)
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
		
		initialize_physics = {}
		stub(initialize_physics, "evaluate")

		initialize_ground = {}
		stub(initialize_ground, "evaluate")

		create_ground_image_sheet = {}
		stub(create_ground_image_sheet, "evaluate")
		
		create_explosion_image_sheet = {}
		stub(create_explosion_image_sheet, "evaluate")
		
		create_chick_image_sheet = {}
		stub(create_chick_image_sheet, "evaluate")
		
		create_background_image = {}
		stub(create_background_image, "evaluate")
		
		create_chasing_explosion = {}
		stub(create_chasing_explosion, "evaluate")
		
		initialize_chick = {}
		stub(initialize_chick, "evaluate")
		
		start_chasing_explosion_timer = {}
		stub(start_chasing_explosion_timer, "evaluate")

		set_current_view_group = {}
		stub(set_current_view_group, "evaluate")

		Runtime = {}
		stub(Runtime, "addEventListener")
		
		chick_jump = {}
		stub(chick_jump, "evaluate")

		move_ground = {}
		stub(move_ground, "evaluate")
		
		move_explosion = {}

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
	
	it("Evalauting create_chick_image_sheet", function()
	 -- when
	 game_scene:createScene(event)
	 -- then
	 assert.stub(create_chick_image_sheet.evaluate).was_called()
	end)
	
	it("Evaluate initialize_physics in createScene", function()
	 -- when
	 game_scene:createScene(event)
	 -- then
	 assert.stub(initialize_physics.evaluate).was_called()
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
	
	it("Evaluate create_chasing_explosion in enterScene", function()
	 -- when
	 game_scene:enterScene(event)
	 -- then
	 assert.stub(create_chasing_explosion.evaluate).was_called()
	end)
	
	it("Evalaute initialize_chick in enterScene", function()
	 -- when
   game_scene:enterScene(event)
   -- then
   assert.stub(initialize_chick.evaluate).was_called()
	end)
	
	it("Evaluate start_chasing_explosion_timer", function()
	 -- when
	 game_scene:enterScene(event)
	 -- then
	 assert.stub(start_chasing_explosion_timer.evaluate).was_called()
	end)

	it("Add enterFrame event lister to Runtime in enterScene", function ( ... )
		-- when
		game_scene:enterScene(event)
		-- then
		assert.stub(Runtime.addEventListener).was_called_with(Runtime, "enterFrame", game_scene.update)
	end)
	
	it("Add tap event listener to Runtime in enterScene", function()
	 -- when
	 game_scene:enterScene(event)
	 -- then
	 assert.stub(Runtime.addEventListener).was_called_with(Runtime, "tap", chick_jump.evaluate)
	end)
	
end)
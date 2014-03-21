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
		
		initialize_game_stat = {}
		stub(initialize_game_stat, "evaluate")
		
		initialize_physics = {}
		stub(initialize_physics, "evaluate")

		create_ground_image_sheet = {}
		stub(create_ground_image_sheet, "evaluate")
		
		create_explosion_image_sheet = {}
		stub(create_explosion_image_sheet, "evaluate")
		
		create_chick_image_sheet = {}
		stub(create_chick_image_sheet, "evaluate")
		
		create_box_image_sheet = {}
		stub(create_box_image_sheet, "evaluate")
		
		create_score_text = {}
		stub(create_score_text, "evaluate")
		
		create_background_image = {}
		stub(create_background_image, "evaluate")
		
		load_audio = {}
		stub(load_audio, "evaluate")

		set_current_view_group = {}
		stub(set_current_view_group, "evaluate")
    
    enter_ready_state = {}
    stub(enter_ready_state, "evaluate")

		game_scene = require("scene.game.game_scene")
	end)
  
  it("EValuate initialize_game_stat", function()
    -- when
    game_scene:createScene(event)
    -- then
    assert.stub(initialize_game_stat.evaluate).was_called()
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
	
	it("Evaluate create_box_image_sheet", function()
	 -- when
	 game_scene:createScene(event)
	 -- then
	 assert.stub(create_box_image_sheet.evaluate).was_called()
	end)
	
	it("Evaluate initialize_physics in createScene", function()
	 -- when
	 game_scene:createScene(event)
	 -- then
	 assert.stub(initialize_physics.evaluate).was_called()
	end) 
	
	it("Evaluate create_score_text in create_scene", function()
	 -- when
	 game_scene:createScene(event)
	 -- then
	 assert.stub(create_score_text.evaluate).was_called()
	end)
	
	it("Evalaute load_audio in create_scene", function()
	 -- when
	 game_scene:createScene(event)
	 -- then
	 assert.stub(load_audio.evaluate).was_called()
	end)

	it("Evaluate enter_ready_state in enterScene", function ( ... )
		-- when
		game_scene:enterScene(event)
		-- then
		assert.stub(enter_ready_state.evaluate).was_called()
	end)
	

	
end)
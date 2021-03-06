describe("create_ground_block", function ( ... )
	local create_ground_block

	local ground_block_image = {}
	local ground_block_image_sheet = {}

	local sequence_name = "sequence#1"
	local level = 1

	setup(function ( ... )

		get_ground_block_image_sheet = {
			evaluate = function ( ... )
				return ground_block_image_sheet
			end
		}
		spy.on(get_ground_block_image_sheet, "evaluate")

		display = { newSprite = function ( ... )
			return ground_block_image
		end}
		spy.on(display, "newSprite")

		stub(ground_block_image, "setSequence")

		set_ground_block_position = {}
		stub(set_ground_block_position, "evaluate")

		insert_to_current_view_group = {}
		stub(insert_to_current_view_group, "evaluate")

		push_to_ground_block_queue = {}
		stub(push_to_ground_block_queue, "evaluate")

		ground_block_sprite_config = {
			sequenceData = {
				{name="normal_with_grass", start=1, count=1}
			}
		}
		
		add_physic_body_to_ground_block = {}
		stub(add_physic_body_to_ground_block, "evaluate")

		create_ground_block = require("ground.create_ground_block")
	end)

	it("Evaluate get_ground_block_image_sheet", function ( ... )
		-- when
		create_ground_block.evaluate(level, sequence_name)
		-- then
		assert.stub(get_ground_block_image_sheet.evaluate).was_called()
	end)

	it("Create ground block image", function ( ... )
		-- when
		create_ground_block.evaluate(level, sequence_name)
		-- then
		assert.spy(display.newSprite).was_called_with(ground_block_image_sheet, ground_block_sprite_config.sequenceData)
	end)

	it("Set given sequence name ot ground_block_image", function ( ... )
		-- when
		create_ground_block.evaluate(level, sequence_name)
		-- then
		assert.stub(ground_block_image.setSequence).was_called_with(ground_block_image, sequence_name)
	end)

	it("Evaluate set_ground_block_position with ground_block_image and level", function ( ... )
		-- when
		create_ground_block.evaluate(level, sequence_name)
		-- then
		assert.stub(set_ground_block_position.evaluate).was_called_with(ground_block_image, level)
	end)

	it("Evalaute insert to current view group", function ( ... )
		-- when
		create_ground_block.evaluate(level, sequence_name)
		-- then
		assert.stub(insert_to_current_view_group.evaluate).was_called_with(ground_block_image)
	end)
	
	it("Evalaute add_physic_body_to_ground_block", function()
    -- when
    create_ground_block.evaluate(level, sequence_name)
    -- then
    assert.stub(add_physic_body_to_ground_block.evaluate).was_called_with(ground_block_image)
  end)
  
  it("Set type = ground to ground_sprite", function()
    -- when
    create_ground_block.evaluate(level, sequence_name)
    -- then
    assert.are.equal(ground_block_image.type, "ground")
  end)

end)
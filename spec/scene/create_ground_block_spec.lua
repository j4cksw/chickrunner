describe("create_ground_block", function ( ... )
	local create_ground_block

	local ground_block_image = {}
	local ground_block_image_sheet = {}

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

		create_ground_block = require("scene.create_ground_block")
	end)

	it("Evaluate get_ground_block_image_sheet", function ( ... )
		-- when
		create_ground_block.evaluate()
		-- then
		assert.stub(get_ground_block_image_sheet.evaluate).was_called()
	end)

	it("Create ground block image", function ( ... )
		-- when
		create_ground_block.evaluate()
		-- then
		assert.spy(display.newSprite).was_called_with(ground_block_image_sheet, ground_block_sprite_config.sequenceData)
	end)

	it("Evaluate set_ground_block_position", function ( ... )
		-- when
		create_ground_block.evaluate()
		-- then
		assert.stub(set_ground_block_position.evaluate).was_called_with(ground_block_image)
	end)

	it("Evalaute insert to current view group", function ( ... )
		-- when
		create_ground_block.evaluate()
		-- then
		assert.stub(insert_to_current_view_group.evaluate).was_called_with(ground_block_image)
	end)

	it("Evaluate push_to_ground_block_queue", function ( ... )
		-- when
		create_ground_block.evaluate()
		-- then
		assert.stub(push_to_ground_block_queue.evaluate).was_called_with(ground_block_image)
	end)
end)
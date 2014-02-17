describe("check_first_ground_block", function ( ... )
	local check_first_ground_block

	local first_block = {
		x = -10,
		contentWidth = 20
	}

	setup(function ( ... )

		display = {}
		stub(display, "remove")

		create_ground_blocks_from_pattern = {}
		stub(create_ground_blocks_from_pattern, "evaluate")

		check_first_ground_block = require("ground.check_first_ground_block")
	end)

	before_each(function ( ... )
		ground_block_queue = { {first_block} }
	end)

	it("If first ground block out of screen then remove from queue", function ( ... )
		-- when
		check_first_ground_block.evaluate()
		-- then
		assert.are.equal(#ground_block_queue, 0)
	end)

	it("If first ground block out of screen then remove from display", function ( ... )
		-- when
		check_first_ground_block.evaluate()
		-- then
		assert.stub(display.remove).was_called_with(first_block)
	end)

	it("If first ground block out of screen then evaluate create_ground_blocks_from_pattern", function ( ... )
		-- when
		check_first_ground_block.evaluate()
		-- then
		assert.stub(create_ground_blocks_from_pattern.evaluate).was_called()
	end)
end)
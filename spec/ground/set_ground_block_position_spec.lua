describe("set_ground_block_position", function ( ... )
	local set_ground_block_position

	local ground_block = {
		contentWidth = 125
	}

	setup(function ( ... )
		ground_config = {
			vertical_start = 972
		}
		set_ground_block_position = require("ground.set_ground_block_position")
	end)

	it("Set y position on given block from ground_config", function ( ... )
		-- when
		set_ground_block_position.evaluate(ground_block)
		-- then
		assert.are.equal(ground_block.y, ground_config.vertical_start)
	end)

	it("Set x position of given block by no block in ground_block_queue", function ( ... )
		-- given
		ground_block_queue = {}
		local expected_x = 62.5
		-- when
		set_ground_block_position.evaluate(ground_block)
		-- then
		assert.are.equal(ground_block.x, expected_x)
	end)

	it("Set x position of given block by 1 block in ground_block_queue", function ( ... )
		-- given
		ground_block_queue = { {} }
		local expected_x = 187.5
		-- when
		set_ground_block_position.evaluate(ground_block)
		-- then
		assert.are.equal(ground_block.x, expected_x)
	end)

	it("Set x position of given block by 2 block in ground_block_queue", function ( ... )
		-- given
		ground_block_queue = { {}, {} }
		local expected_x = 312.5
		-- when
		set_ground_block_position.evaluate(ground_block)
		-- then
		assert.are.equal(ground_block.x, expected_x)
	end)
end)
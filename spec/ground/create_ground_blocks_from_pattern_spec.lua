describe("create_ground_blocks_from_pattern", function ( ... )
	local create_ground_blocks_from_pattern

	setup(function ( ... )
		ground_pattern = {
			{ "p1", "p2"}
		}

		create_ground_block = {
			evaluate = function ( ... )
				return {}
			end
		}
		spy.on(create_ground_block, "evaluate")



		create_ground_blocks_from_pattern = require("ground.create_ground_blocks_from_pattern")
	end)

	it("Evaluate create_ground_block with index, and value", function ( ... )
		-- when
		create_ground_blocks_from_pattern.evaluate()
		-- then
		assert.stub(create_ground_block.evaluate).was_called_with(1, ground_pattern[1][1])
	end)

	it("Evaluate create_ground_block with index, and value", function ( ... )
		-- when
		create_ground_blocks_from_pattern.evaluate()
		-- then
		assert.stub(create_ground_block.evaluate).was_called_with(2, ground_pattern[1][2])
	end)

end)
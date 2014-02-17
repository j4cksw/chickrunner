describe("set_ground_block_position", function ( ... )
	local set_ground_block_position

	local ground_block = {
		contentWidth = 125
	}

	local level = 1

	setup(function ( ... )

		get_block_vertical_position_by_level = {
			evaluate = function ( ... )
				return 1024
			end
		}
		spy.on(get_block_vertical_position_by_level, "evaluate")

		get_next_block_horizontal_position = {
			evaluate = function ( ... )
				return 64
			end
		}
		spy.on(get_next_block_horizontal_position, "evaluate")

		set_ground_block_position = require("ground.set_ground_block_position")
	end)

	it("Evaluate get_block_vertical_position_by_level", function ( ... )
		-- when
		set_ground_block_position.evaluate(ground_block, level)
		-- then
		assert.stub(get_block_vertical_position_by_level.evaluate).was_called_with(ground_block, level)
	end)

	it("Evalaute get_next_block_horizontal_position", function ( ... )
		-- when
		set_ground_block_position.evaluate(ground_block, level)
		-- then
		assert.stub(get_next_block_horizontal_position.evaluate).was_called_with(ground_block)
	end)

end)
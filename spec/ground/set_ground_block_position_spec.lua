describe("set_ground_block_position", function ( ... )
	local set_ground_block_position

	local ground_block = {
		contentWidth = 125
	}

	local level = 1

	setup(function ( ... )
		ground_config = {
			vertical_start = 972
		}

		get_next_block_horizontal_position = {
			evaluate = function ( ... )
				return 64
			end
		}
		spy.on(get_next_block_horizontal_position, "evaluate")

		set_ground_block_position = require("ground.set_ground_block_position")
	end)

	it("Set y position on given block from ground_config and multiply by level", function ( ... )
		-- when
		set_ground_block_position.evaluate(ground_block, level)
		-- then
		assert.are.equal(ground_block.y, ground_config.vertical_start*level)
	end)

	it("Set y position on given block from ground_config and multiply by level", function ( ... )
		-- given
		level = 2
		-- when
		set_ground_block_position.evaluate(ground_block, level)
		-- then
		assert.are.equal(ground_block.y, ground_config.vertical_start*level)
	end)

	it("Evalaute get_next_block_horizontal_position", function ( ... )
		-- when
		set_ground_block_position.evaluate(ground_block, level)
		-- then
		assert.stub(get_next_block_horizontal_position.evaluate).was_called_with(ground_block)
	end)

end)
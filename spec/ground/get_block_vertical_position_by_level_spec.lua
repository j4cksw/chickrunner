describe("get_block_vertical_position_by_level", function ( ... )
	local get_block_vertical_position_by_level

	local ground_block = {
		contentHeight=128
	}

	setup(function ( ... )
		ground_config = {
			vertical_start = 972
		}

		get_block_vertical_position_by_level = require("ground.get_block_vertical_position_by_level")
	end)

	it("If given 1 then return initial start", function ( ... )
		-- given
		local level = 1
		-- when
		local result = get_block_vertical_position_by_level.evaluate(ground_block, level)
		-- then
		assert.are.equal(result, ground_config.vertical_start)
	end)

	it("If given 2 then return 972+contentHeight", function ( ... )
		-- given
		local level = 2
		-- when
		local result = get_block_vertical_position_by_level.evaluate(ground_block, level)
		-- then
		assert.are.equal(result, ground_config.vertical_start+ground_block.contentHeight)
	end)

	it("If given 3 then return 972+contentHeight*2", function ( ... )
		-- given
		local level = 3
		-- when
		local result = get_block_vertical_position_by_level.evaluate(ground_block, level)
		-- then
		assert.are.equal(result, ground_config.vertical_start+(ground_block.contentHeight*2))
	end)
end)
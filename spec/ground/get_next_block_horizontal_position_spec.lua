describe("get_next_block_horizontal_position", function ( ... )
	local get_next_block_horizontal_position

	setup(function ( ... )
	  ground_config = {
	   horizontal_start_position_offset=100
	  }
		get_next_block_horizontal_position = require("ground.get_next_block_horizontal_position")
	end)

	it("should return half of block minus with offset when no block available.", function ( ... )
		-- given
		ground_block_queue = {}
		local ground_block = { contentWidth=128}
		-- when
		local result = get_next_block_horizontal_position.evaluate(ground_block)
		-- then
		assert.are.equal(result, 64-100)
	end)

	it("If block avaialbe , return last position + contentWidth", function ( ... )
		-- given
		ground_block_queue = {
			{{ x=64}, {x=64}, {x=64}}
		}
		local ground_block = {contentWidth=128}
		-- when
		local result = get_next_block_horizontal_position.evaluate(ground_block)
		-- then
		assert.are.equal(result, 192)
	end)
end)
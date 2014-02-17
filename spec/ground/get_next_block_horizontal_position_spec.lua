describe("get_next_block_horizontal_position", function ( ... )
	local get_next_block_horizontal_position

	setup(function ( ... )
		get_next_block_horizontal_position = require("ground.get_next_block_horizontal_position")
	end)

	it("If no block , return half of contentWidth", function ( ... )
		-- given
		ground_block_queue = {}
		local ground_block = { contentWidth=128}
		-- when
		local result = get_next_block_horizontal_position.evaluate(ground_block)
		-- then
		assert.are.equal(result, 64)
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
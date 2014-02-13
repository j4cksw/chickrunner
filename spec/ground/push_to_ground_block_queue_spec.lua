describe("push_to_ground_block_queue", function ( ... )
	local push_to_ground_block_queue

	setup(function ( ... )
		push_to_ground_block_queue = require("ground.push_to_ground_block_queue")
	end)

	it("Insert to ground_block_queue", function ( ... )
		-- given
		ground_block_queue = {}
		local new_ground_block = {}
		-- when
		push_to_ground_block_queue.evaluate(new_ground_block)
		-- then
		assert.are.equal(ground_block_queue[1], new_ground_block)
	end)
end)
describe("move_ground", function ( ... )
	local move_ground

	setup(function ( ... )
		move_ground = require("ground.move_ground")
	end)

	it("Move every block in ground_block_queue to the left by speed parameter", function ( ... )
		-- given
		ground_config = { speed=5 }
		ground_block_queue = {
			{x=0}
		}
		-- when
		move_ground.evaluate()
		-- then
		assert.are.equal(ground_block_queue[1].x, -5)
	end)

	it("Move every block in ground_block_queue to the left by speed parameter", function ( ... )
		-- given
		ground_config = { speed=5 }
		ground_block_queue = {
			{x=0}, {x=10}
		}
		-- when
		move_ground.evaluate()
		-- then
		assert.are.equal(ground_block_queue[2].x, 5)
	end)
end)
describe("initialize_ground", function ( ... )
	local initialize_ground

	setup(function ( ... )
		create_ground_block = {}
		stub(create_ground_block, "evaluate")

		initialize_ground = require("ground.initialize_ground")
	end)

	it("Evaluate create_ground_block 6 times", function ( ... )
		-- when
		initialize_ground.evaluate()
		-- then
		assert.stub(create_ground_block.evaluate).was_called(6)
	end)
end)
describe("get_ground_block_image_sheet", function ( ... )
	local get_ground_block_image_sheet

	setup(function ( ... )
		get_ground_block_image_sheet = require("scene.get_ground_block_image_sheet")
	end)

	it("return ground_block_image_sheet", function ( ... )
		-- given
		ground_block_image_sheet = ground_block_image_sheet or {}
		-- when
		local result = get_ground_block_image_sheet.evaluate()
		-- then
		assert.are.equal(result, ground_block_image_sheet)
	end)
end)
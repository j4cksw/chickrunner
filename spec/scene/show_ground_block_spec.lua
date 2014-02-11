describe("show_ground_block", function ( ... )
	local show_ground_block

	local ground_block_image = {}

	setup(function ( ... )

		display = { newImage = function ( ... )
			return ground_block_image
		end}
		spy.on(display, "newImage")

		insert_to_current_view_group = {}
		stub(insert_to_current_view_group, "evaluate")

		show_ground_block = require("scene.show_ground_block")
	end)

	it("Create ground block image", function ( ... )
		-- when
		show_ground_block.evaluate()
		-- then
		assert.spy(display.newImage).was_called_with("img/sprite/ground.png")
	end)

	it("Set x to screen origin", function ( ... )
		-- when
		show_ground_block.evaluate()
		-- then
		assert.are.equal(ground_block_image.x, 64)
	end)

	it("Set y to 972", function ( ... )
		-- when
		show_ground_block.evaluate()
		-- then
		assert.are.equal(ground_block_image.y, 1036)
	end)

	it("Evalaute insert to current view group", function ( ... )
		-- when
		show_ground_block.evaluate()
		-- then
		assert.stub(insert_to_current_view_group.evaluate).was_called_with(ground_block_image)
	end)
end)
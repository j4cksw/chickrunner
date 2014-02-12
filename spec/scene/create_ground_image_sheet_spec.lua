describe("create_ground_image_sheet", function ( ... )
	local create_ground_image_sheet

	local fake_image_sheet = {}

	setup(function ( ... )

		graphics = {
			newImageSheet = function ( ... )
				return fake_image_sheet
			end
		}
		spy.on(graphics, "newImageSheet")

		ground_block_sprite_config = {
			path = "img/sprite/ground.jpg",
			options = {width = 125, height = 125, numFrames = 1},
			sequenceData = {
				{name="normal_with_grass", start=1, count=1}
			}
		}

		create_ground_image_sheet = require("scene.create_ground_image_sheet")
	end)

	it("Evalaute graphics.newImageSheet with path and options", function ( ... )
		-- given
		local sprite_path = ground_block_sprite_config.path
		local options = ground_block_sprite_config.options
		-- when
		create_ground_image_sheet.evaluate()
		-- then
		assert.stub(graphics.newImageSheet).was_called_with(sprite_path, options)
	end)

	it("Set to global model", function ( ... )
		-- when
		create_ground_image_sheet.evaluate()
		-- then
		assert.are.same(ground_block_image_sheet, fake_image_sheet)
	end)
end)
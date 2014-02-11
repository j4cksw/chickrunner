describe("create_ground_image_sheet", function ( ... )
	local create_ground_image_sheet

	local options = {width = 125, height = 125, numFrames = 1}
	local sprite_path = "img/sprite/ground.jpg"
	local fake_image_sheet = {}

	setup(function ( ... )

		graphics = {
			newImageSheet = function ( ... )
				return fake_image_sheet
			end
		}
		spy.on(graphics, "newImageSheet")

		create_ground_image_sheet = require("scene.create_ground_image_sheet")
	end)

	it("Evalaute graphics.newImageSheet with path and options", function ( ... )
		-- when
		create_ground_image_sheet.evaluate()
		-- then
		assert.stub(graphics.newImageSheet).was_called_with(sprite_path, options)
	end)

	it("Have expected sequence data", function ( ... )
		-- given
		local expectedSequenceData = {name="normal_with_grass", start=1, count=1}
		-- when
		create_ground_image_sheet.evaluate()
		-- then
		assert.are.same(fake_image_sheet.sequenceData[1], expectedSequenceData)
	end)

	it("Set to global model", function ( ... )
		-- when
		create_ground_image_sheet.evaluate()
		-- then
		assert.are.same(ground_image_sheet, fake_image_sheet)
	end)
end)
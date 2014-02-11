create_ground_image_sheet = {}

graphics = graphics or require("graphics")

function create_ground_image_sheet.evaluate()
	ground_image_sheet = graphics.newImageSheet("img/sprite/ground.jpg", {width = 125, height = 125, numFrames = 1})

	ground_image_sheet.sequenceData = {
		{name="normal_with_grass", start=1, count=1}
	}
end

return create_ground_image_sheet
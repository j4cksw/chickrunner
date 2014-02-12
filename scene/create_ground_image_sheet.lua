create_ground_image_sheet = {}

graphics = graphics or require("graphics")
ground_block_sprite_config = ground_block_sprite_config or require("config.ground_block_sprite_config")

function create_ground_image_sheet.evaluate()
	ground_block_image_sheet = graphics.newImageSheet(ground_block_sprite_config.path,
		ground_block_sprite_config.options)

	ground_block_image_sheet.sequenceData = ground_block_sprite_config.sequenceData
end

return create_ground_image_sheet
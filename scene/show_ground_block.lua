show_ground_block = {}

insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")
get_ground_block_image_sheet = get_ground_block_image_sheet or require("scene.get_ground_block_image_sheet")
ground_block_sprite_config = ground_block_sprite_config or require("config.ground_block_sprite_config")

function show_ground_block.evaluate()
	local ground_block_image_sheet = get_ground_block_image_sheet.evaluate()
	local ground_block_image = display.newSprite(ground_block_image_sheet, ground_block_sprite_config.sequenceData)
	ground_block_image.x = 64
	ground_block_image.y = 1036

	insert_to_current_view_group.evaluate(ground_block_image)
end

return show_ground_block
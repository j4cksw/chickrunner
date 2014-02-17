create_ground_block = {}

insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")
get_ground_block_image_sheet = get_ground_block_image_sheet or require("scene.get_ground_block_image_sheet")
ground_block_sprite_config = ground_block_sprite_config or require("config.ground_block_sprite_config")
set_ground_block_position = set_ground_block_position or require("ground.set_ground_block_position")
push_to_ground_block_queue = push_to_ground_block_queue or require("ground.push_to_ground_block_queue")

function create_ground_block.evaluate(level, sequence_name)
	local ground_block_image_sheet = get_ground_block_image_sheet.evaluate()
	local ground_block_image = display.newSprite(ground_block_image_sheet, ground_block_sprite_config.sequenceData)

	ground_block_image:setSequence( sequence_name )

	insert_to_current_view_group.evaluate(ground_block_image)
	set_ground_block_position.evaluate(ground_block_image, level)
	push_to_ground_block_queue.evaluate(ground_block_image)
end

return create_ground_block
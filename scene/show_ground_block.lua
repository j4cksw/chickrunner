show_ground_block = {}

insert_to_current_view_group = insert_to_current_view_group or require("insert_to_current_view_group")

function show_ground_block.evaluate()
	local ground_block_image = display.newImage("img/sprite/ground.png")
	ground_block_image.x = 64
	ground_block_image.y = 1036

	insert_to_current_view_group.evaluate(ground_block_image)
end

return show_ground_block
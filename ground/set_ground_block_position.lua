set_ground_block_position = {}

get_block_vertical_position_by_level = get_block_vertical_position_by_level or require("ground.get_block_vertical_position_by_level")
get_next_block_horizontal_position = get_next_block_horizontal_position or require("ground.get_next_block_horizontal_position")

function set_ground_block_position.evaluate(ground_block, level)
	ground_block.y = get_block_vertical_position_by_level.evaluate(ground_block, level)
	ground_block.x = get_next_block_horizontal_position.evaluate(ground_block)
	print("contentWidth="..ground_block.contentWidth)
	print("New block x="..ground_block.x.."y="..ground_block.y)
end

return set_ground_block_position
set_ground_block_position = {}

ground_config = ground_config or require("config.ground_config")
ground_block_queue = ground_block_queue or require("ground.ground_block_queue")
get_next_block_horizontal_position = get_next_block_horizontal_position or require("ground.get_next_block_horizontal_position")

function set_ground_block_position.evaluate(ground_block, level)
	ground_block.y = ground_config.vertical_start*level
	ground_block.x = get_next_block_horizontal_position.evaluate(ground_block)
	print("contentWidth="..ground_block.contentWidth)
	print("New block x="..ground_block.x)
end

return set_ground_block_position
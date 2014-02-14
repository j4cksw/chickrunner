set_ground_block_position = {}

ground_config = ground_config or require("config.ground_config")
ground_block_queue = ground_block_queue or require("ground.ground_block_queue")

function set_ground_block_position.evaluate(ground_block)
	ground_block.y = ground_config.vertical_start
	ground_block.x = (#ground_block_queue*ground_block.contentWidth) + (ground_block.contentWidth/2)
	print("contentWidth="..ground_block.contentWidth)
	print("New block x="..ground_block.x)
end

return set_ground_block_position
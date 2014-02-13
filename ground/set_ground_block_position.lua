set_ground_block_position = {}
ground_config = ground_config or require("config.ground_config")

function set_ground_block_position.evaluate(ground_block)
	ground_block.y = ground_config.vertical_start
	ground_block.x = ground_block.contentWidth/2
end

return set_ground_block_position
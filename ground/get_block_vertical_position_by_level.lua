get_block_vertical_position_by_level = {}

ground_config = ground_config or require("config.ground_config")

function get_block_vertical_position_by_level.evaluate(ground_block, level)
	local vertical_start = ground_config.vertical_start
	local content_height = ground_block.contentHeight
	return vertical_start + (content_height*(level-1))
end

return get_block_vertical_position_by_level
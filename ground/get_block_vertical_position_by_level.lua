get_block_vertical_position_by_level = {}

ground_config = ground_config or require("config.ground_config")

function get_block_vertical_position_by_level.evaluate(ground_block, level)
	local vertical_start = ground_config.vertical_start

	if level == 1 then
		return vertical_start
	else
		return vertical_start + (ground_block.contentHeight*(level-1))
	end
end

return get_block_vertical_position_by_level
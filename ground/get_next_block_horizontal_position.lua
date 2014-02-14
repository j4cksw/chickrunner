get_next_block_horizontal_position = {}

ground_block_queue = ground_block_queue or require("ground.ground_block_queue")

function get_next_block_horizontal_position.evaluate(ground_block)
	if #ground_block_queue > 0 then
		return ground_block_queue[#ground_block_queue].x + ground_block.contentWidth
	else
		return ground_block.contentWidth/2
	end
end

return get_next_block_horizontal_position
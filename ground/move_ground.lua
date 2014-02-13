move_ground = {}

ground_config = ground_config or require("config.ground_config")
ground_block_queue = ground_block_queue or require("ground.ground_block_queue")

function move_ground.evaluate()
	local move_speed = ground_config.speed
	local current_position = ground_block_queue[1].x
	ground_block_queue[1].x = current_position + move_speed
end

return move_ground
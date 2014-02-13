move_ground = {}

ground_config = ground_config or require("config.ground_config")
ground_block_queue = ground_block_queue or require("ground.ground_block_queue")

function move_ground.evaluate()
	local move_speed = ground_config.speed
	local current_position

	for key, block in pairs(ground_block_queue) do
		current_position = block.x
		block.x = current_position - move_speed
	end
end

return move_ground
move_ground = {}

ground_config = ground_config or require("config.ground_config")
ground_block_queue = ground_block_queue or require("ground.ground_block_queue")
check_first_ground_block = check_first_ground_block or require("ground.check_first_ground_block")

function move_ground.evaluate()
	check_first_ground_block.evaluate()
	
	local move_speed = ground_config.speed
	local current_position

	for key, column in pairs(ground_block_queue) do
		for key, block in pairs(column) do
			current_position = block.x
			block.x = current_position - move_speed
		end
	end

end

return move_ground
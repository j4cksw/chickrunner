initialize_ground = {}

create_ground_blocks_from_pattern = create_ground_blocks_from_pattern or require("ground.create_ground_blocks_from_pattern")
ground_config = ground_config or require("config.ground_config")
ground_block_queue = ground_block_queue or require("ground.ground_block_queue")

function initialize_ground.evaluate()
  ground_block_queue = {}
	for i = 1, ground_config.initial_block do
		create_ground_blocks_from_pattern.evaluate()
	end		
end

return initialize_ground
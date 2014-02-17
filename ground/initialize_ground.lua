initialize_ground = {}

create_ground_blocks_from_pattern = create_ground_blocks_from_pattern or require("ground.create_ground_blocks_from_pattern")
ground_config = ground_config or require("config.ground_config")

function initialize_ground.evaluate()
	for i = 1, ground_config.initial_block do
		create_ground_blocks_from_pattern.evaluate()
	end		
end

return initialize_ground
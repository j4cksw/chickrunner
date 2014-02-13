initialize_ground = {}

create_ground_block = create_ground_block or require("ground.create_ground_block")
ground_config = ground_config or require("config.ground_config")

function initialize_ground.evaluate()
	for i = 1, ground_config.initial_block do
		create_ground_block.evaluate()
	end		
end

return initialize_ground
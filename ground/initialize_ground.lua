initialize_ground = {}

create_ground_block = create_ground_block or require("ground.create_ground_block")

function initialize_ground.evaluate()
	for i = 1,6 do
		create_ground_block.evaluate()
	end		
end

return initialize_ground
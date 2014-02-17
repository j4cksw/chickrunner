create_ground_blocks_from_pattern = {}

ground_pattern = ground_pattern or require("config.ground_pattern")
create_ground_block = create_ground_block or require("ground.create_ground_block")

function create_ground_blocks_from_pattern.evaluate()
	for index, value in pairs(ground_pattern[1]) do
		print(value)
		create_ground_block.evaluate(index, value)
	end
end

return create_ground_blocks_from_pattern
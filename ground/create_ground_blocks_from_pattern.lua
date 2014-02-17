create_ground_blocks_from_pattern = {}

ground_pattern = ground_pattern or require("config.ground_pattern")
create_ground_block = create_ground_block or require("ground.create_ground_block")
push_to_ground_block_queue = push_to_ground_block_queue or require("ground.push_to_ground_block_queue")

function create_ground_blocks_from_pattern.evaluate()
	local ground_blocks = {}
	for index, value in pairs(ground_pattern[1]) do
		table.insert(ground_blocks, create_ground_block.evaluate(index, value))
	end

	push_to_ground_block_queue.evaluate(ground_blocks)
end

return create_ground_blocks_from_pattern
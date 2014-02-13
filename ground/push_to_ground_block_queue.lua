push_to_ground_block_queue = {}
ground_block_queue = ground_block_queue or require("ground.ground_block_queue")

function push_to_ground_block_queue.evaluate(ground_block)
	table.insert(ground_block_queue, ground_block)
end

return push_to_ground_block_queue
check_first_ground_block = {}

ground_block_queue = ground_block_queue or require("ground.ground_block_queue")
create_ground_blocks_from_pattern = create_ground_blocks_from_pattern or require("ground.create_ground_blocks_from_pattern")
increase_score = increase_score or require("scene.game.score.increase_score")

function check_first_ground_block.evaluate()
	local first_ground_block = ground_block_queue[1][1]

	if first_ground_block.x <= -(first_ground_block.contentWidth/2) then 
		table.remove(ground_block_queue, 1)
		display.remove( first_ground_block )
		create_ground_blocks_from_pattern.evaluate()
		increase_score.evaluate()
	end
end

return check_first_ground_block
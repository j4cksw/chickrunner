check_first_ground_block = {}

ground_block_queue = ground_block_queue or require("ground.ground_block_queue")
create_ground_blocks_from_pattern = create_ground_blocks_from_pattern or require("ground.create_ground_blocks_from_pattern")
generate_obstacle = generate_obstacle or require("scene.game.obstacle.generate_obstacle")
function check_first_ground_block.evaluate()
	local first_ground_block = ground_block_queue[1][1]

	if first_ground_block.x <= -(first_ground_block.contentWidth/2) then 
		--print("First block x="..first_ground_block.x)
		--print("Width="..first_ground_block.contentWidth)
		table.remove(ground_block_queue, 1)
		display.remove( first_ground_block )
		create_ground_blocks_from_pattern.evaluate()
		generate_obstacle.evaluate()
	end
end

return check_first_ground_block
check_first_ground_block = {}

ground_block_queue = ground_block_queue or require("ground.ground_block_queue")
create_ground_block = create_ground_block or require("ground.create_ground_block")

function check_first_ground_block.evaluate()
	local first_ground_block = ground_block_queue[1][1]

	if first_ground_block.x <= -(first_ground_block.contentWidth/2) then 
		print("First block x="..first_ground_block.x)
		print("Width="..first_ground_block.contentWidth)
		table.remove(ground_block_queue, 1)
		display.remove( first_ground_block )
		create_ground_block.evaluate()
	end
end

return check_first_ground_block
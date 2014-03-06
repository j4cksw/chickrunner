insert_to_box_queue = {}

--box_queue = box_queue or require("box.box_queue")
obstacle_queue = obstacle_queue or require("scene.game.obstacle.obstacle_queue")

function insert_to_box_queue.evaluate(box_sprite)
  table.insert(obstacle_queue, {{box_sprite}})
end

return insert_to_box_queue
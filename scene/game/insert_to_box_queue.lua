insert_to_box_queue = {}

box_queue = box_queue or require("box.box_queue")

function insert_to_box_queue.evaluate(box_sprite)
  table.insert(box_queue, box_sprite)
end

return insert_to_box_queue
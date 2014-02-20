push_to_explosion_queue = {}

explosion_queue = explosion_queue or require("explosion.explosion_queue")

function push_to_explosion_queue.evaluate(new_explosion_sprite)
  table.insert(explosion_queue, new_explosion_sprite)
end

return push_to_explosion_queue
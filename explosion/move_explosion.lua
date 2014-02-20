move_explosion = {}

explosion_queue = explosion_queue or require("explosion.explosion_queue")

function move_explosion.evaluate(move_speed)
  for index, value in pairs(explosion_queue) do
    explosion_queue[index].x = explosion_queue[index].x - move_speed
  end
end

return move_explosion
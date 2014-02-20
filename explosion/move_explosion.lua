move_explosion = {}

explosion_queue = explosion_queue or require("explosion.explosion_queue")

function move_explosion.evaluate(move_speed)
    explosion_queue[1].x = explosion_queue[1].x - move_speed
end

return move_explosion
move_explosion = {}

explosion_queue = explosion_queue or require("explosion.explosion_queue")
_ = require("lib.underscore")

function move_explosion.evaluate(move_speed)
  print("moving explosion speed="..move_speed)
  print("in queue="..#explosion_queue)
--  for index, value in pairs(explosion_queue) do
--    print("x="..explosion_queue[index].x)
--    explosion_queue[index].x = explosion_queue[index].x - move_speed
--    print("x="..explosion_queue[index].x)
--  end
  
  _.each(explosion_queue, function(explosion)
    explosion.x = explosion.x - move_speed
    print("x="..explosion.x)
  end)
end

return move_explosion
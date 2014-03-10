remove_obstacle = {}

_ = require("lib.underscore")
obstacle_queue = obstacle_queue or require("scene.game.obstacle.obstacle_queue")

function remove_obstacle.evaluate()
  print("Remove obstacles")
  print("Obstacle left"..#obstacle_queue)
  
  _.each(obstacle_queue, function(obstacle)
    display.remove(obstacle)
  end)
  obstacle_queue = {} 
end

return remove_obstacle
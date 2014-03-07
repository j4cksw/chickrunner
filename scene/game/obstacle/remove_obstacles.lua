remove_obstacle = {}

_ = require("lib.underscore")
obstacle_queue = obstacle_queue or require("scene.game.obstacle.obstacle_queue")

function remove_obstacle.evaluate()
  local flattened_obstacle = _.flatten(obstacle_queue)
  _.each(flattened_obstacle, function(element)
    display.remove(element)
  end)
  obstacle_queue = {} 
end

return remove_obstacle
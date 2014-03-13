destroy_all_obstacles = {}

obstacle_queue = obstacle_queue or require("scene.game.obstacle.obstacle_queue")
destroy_obstacle_group = destroy_obstacle_group or require("scene.game.obstacle.destroy_obstacle_group")
_ = require("lib.underscore")

function destroy_all_obstacles.evaluate()
  _.each(obstacle_queue, function(obstacle_group)
    destroy_obstacle_group.evaluate(obstacle_group)
  end)
end

return destroy_all_obstacles
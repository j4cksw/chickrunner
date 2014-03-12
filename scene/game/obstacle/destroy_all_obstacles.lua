destroy_all_obstacles = {}

obstacle_queue = obstacle_queue or require("scene.game.obstacle.obstacle_queue")
destroy_obstacle_group = destroy_obstacle_group or require("scene.game.obstacle.destroy_obstacle_group")

function destroy_all_obstacles.evaluate()
  destroy_obstacle_group.evaluate(obstacle_queue[1])
end

return destroy_all_obstacles
move_obstacles = {}

move_obstacle = move_obstacle or require("scene.game.obstacle.move_obstacle")
obstacle_queue = obstacle_queue or require("scene.game.obstacle.obstacle_queue")

function move_obstacles.evaluate()
  move_obstacle.evaluate(obstacle_queue[1])
end

return move_obstacles
move_obstacles = {}

move_obstacle = move_obstacle or require("scene.game.obstacle.move_obstacle")
obstacle_queue = obstacle_queue or require("scene.game.obstacle.obstacle_queue")
check_next_obstacle_group = check_next_obstacle_group or require("scene.game.obstacle.check_next_obstacle_group")

function move_obstacles.evaluate()
  for key, value in pairs(obstacle_queue) do
    move_obstacle.evaluate(value)
  end
  
  check_next_obstacle_group.evaluate()
end

return move_obstacles
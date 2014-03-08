move_obstacles = {}

move_obstacle = move_obstacle or require("scene.game.obstacle.move_obstacle")
obstacle_queue = obstacle_queue or require("scene.game.obstacle.obstacle_queue")

function move_obstacles.evaluate()
  for key, value in pairs(obstacle_queue) do
    move_obstacle.evaluate(value)
  end
  
--  local last_obstacle = obstacle_queue[#obstacle_queue]
--  local last_obstacle_element = last_obstacle[last_obstacle.numChildren]
--  if (last_obstacle_element.x + (last_obstacle_element.contentWidth/2)) < display.viewableContentWidth then
--    generate_obstacle.evaluate()
--  end 
end

return move_obstacles
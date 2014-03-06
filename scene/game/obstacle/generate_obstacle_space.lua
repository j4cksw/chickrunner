generate_obstacle_space = {}

function generate_obstacle_space.evaluate()
  local obstacle_space = display.newRect(0, 0, 128, 128)
  obstacle_space.alpha = 0
  
  return obstacle_space
end

return generate_obstacle_space
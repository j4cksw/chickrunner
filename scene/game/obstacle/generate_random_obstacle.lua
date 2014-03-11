generate_random_obstacle = {}

_ = underscore or require("lib.underscore")
obstacle_pattern = obstacle_pattern or require("config.obstacle_pattern")

function generate_random_obstacle.evaluate()
  local pattern_names = _.keys(obstacle_pattern)
  local selected_pattern = math.random(1, #pattern_names)
end

return generate_random_obstacle
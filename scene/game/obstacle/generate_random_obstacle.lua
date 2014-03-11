generate_random_obstacle = {}

_ = underscore or require("lib.underscore")
obstacle_pattern = obstacle_pattern or require("config.obstacle_pattern")
generate_obstacle = generate_obstacle or require("scene.game.obstacle.generate_obstacle")

function generate_random_obstacle.evaluate()
  local pattern_names = _.keys(obstacle_pattern)
  local selected_pattern_index = math.random(1, #pattern_names)
  local selected_pattern_key = pattern_names[selected_pattern_index]
  generate_obstacle.evaluate(obstacle_pattern[selected_pattern_key])
end

return generate_random_obstacle
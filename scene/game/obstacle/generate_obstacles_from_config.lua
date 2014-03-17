generate_obstacles_from_config = {}

generate_obstacle = generate_obstacle or require("scene.game.obstacle.generate_obstacle")
obstacles_config = obstacles_config or require("config.obstacles_config")
obstacle_pattern = obstacle_pattern or require("config.obstacle_pattern")
_ = require("lib.underscore")

function generate_obstacles_from_config.evaluate()
  _.each(obstacles_config, function(each_pattern_name)
    print(each_pattern_name)
    local selected_pattern = obstacle_pattern[each_pattern_name]
    generate_obstacle.evaluate(selected_pattern)
  end)
end

return generate_obstacles_from_config
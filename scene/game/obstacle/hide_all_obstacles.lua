hide_all_obstacles = {}

_ = require("lib.underscore")

function hide_all_obstacles.evaluate()
  _.each(obstacle_queue, function(obstacle_group)
    obstacle_group.isVisible = false
  end)
end

return hide_all_obstacles
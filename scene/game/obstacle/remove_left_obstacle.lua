remove_left_obstacle = {}

_ = require("lib.underscore")
obstacle_queue = obstacle_queue or require("scene.game.obstacle.obstacle_queue")

function remove_left_obstacle.evaluate()
  _.each(obstacle_queue, function(obstacle_group)
    if obstacle_group.numChildren > 0 then
      for i=1, obstacle_group.numChildren do
        if obstacle_group[i] and obstacle_group[i].x <= 56 then
          display.remove(obstacle_group[i])
        end
      end
    end
  end)
end

return remove_left_obstacle
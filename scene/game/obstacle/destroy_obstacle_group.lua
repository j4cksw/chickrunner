destroy_obstacle_group = {}
replace_with_explosion = replace_with_explosion or require("scene.game.replace_with_explosion")

function destroy_obstacle_group.evaluate(obstacle_group)

  for i=1, obstacle_group.numChildren do

    if obstacle_group[i] and obstacle_group[i].type == "box" then
      replace_with_explosion.evaluate(obstacle_group[i])
    end
  end
  
  display.remove(obstacle_group)
end

return destroy_obstacle_group
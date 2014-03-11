destroy_obstacle_group = {}
replace_with_explosion = replace_with_explosion or require("scene.game.replace_with_explosion")

function destroy_obstacle_group.evaluate(obstacle_element)
  local group = obstacle_element.parent

  for i=1, group.numChildren do

    if group[i] and group[i].type == "box" then
      replace_with_explosion.evaluate(group[i])
    end
  end
  
  display.remove(group)
end

return destroy_obstacle_group
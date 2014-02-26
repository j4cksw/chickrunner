box_collision_listener = {}

update_stage = update_stage or require("scene.game.update_stage")
explosion_timer = explosion_timer or require("explosion.explosion_timer")
replace_with_explosion = replace_with_explosion or require("scene.game.replace_with_explosion")
chick_jump = chick_jump or require("scene.game.chick_jump")
storyboard = storyboard or require("storyboard")

function box_collision_listener.evaluate(event)
  Runtime:removeEventListener("enterFrame", update_stage.evaluate)
  Runtime:removeEventListener("tap", chick_jump.evaluate)
  timer.cancel(explosion_timer)
  replace_with_explosion.evaluate(event.target)
  Runtime:addEventListener("tap", storyboard.reloadScene)
end

return box_collision_listener
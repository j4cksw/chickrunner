box_collision_listener = {}

update_stage = update_stage or require("scene.game.update_stage")
explosion_timer = explosion_timer or require("explosion.explosion_timer")

function box_collision_listener.evaluate(event)
  Runtime:removeEventListener("enterFrame", update_stage.evaluate)
  timer.cancel(explosion_timer)
end

return box_collision_listener
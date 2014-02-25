box_collision_listener = {}

update_stage = update_stage or require("scene.game.update_stage")
explosion_timer = explosion_timer or require("explosion.explosion_timer")
create_explosion_sprite = create_explosion_sprite or require("explosion.create_explosion_sprite")

function box_collision_listener.evaluate(event)
  Runtime:removeEventListener("enterFrame", update_stage.evaluate)
  timer.cancel(explosion_timer)
  
  local box_x = event.target.x
  
  display.remove(event.target)
  local explosion_sprite = create_explosion_sprite.evaluate()
  explosion_sprite.x = box_x
end

return box_collision_listener
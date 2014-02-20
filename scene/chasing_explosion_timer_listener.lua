chasing_explosion_timer_listener = {}

create_chasing_explosion = create_chasing_explosion or require("scene.create_chasing_explosion")
start_chasing_explosion_timer = start_chasing_explosion_timer or require("scene.start_chasing_explosion_timer")

function chasing_explosion_timer_listener.evaluate()
  create_chasing_explosion.evaluate()
  start_chasing_explosion_timer.evaluate()
end

return chasing_explosion_timer_listener
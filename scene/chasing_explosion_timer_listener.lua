chasing_explosion_timer_listener = {}

create_chasing_explosion = create_chasing_explosion or require("scene.create_chasing_explosion")

function chasing_explosion_timer_listener.evaluate()
  create_chasing_explosion.evaluate()
end

return chasing_explosion_timer_listener
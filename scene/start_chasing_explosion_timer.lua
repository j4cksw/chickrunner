start_chasing_explosion_timer = {}

chasing_explosion_timer_listener = chasing_explosion_timer_listener or require("scene.chasing_explosion_timer_listener")

function start_chasing_explosion_timer.evaluate()
  timer.performWithDelay(100, chasing_explosion_timer_listener.evaluate)
end

return start_chasing_explosion_timer
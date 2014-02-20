start_chasing_explosion_timer = {}

game_scene_config = game_scene_config or require("config.game_scene_config")
chasing_explosion_timer_listener = chasing_explosion_timer_listener or require("scene.chasing_explosion_timer_listener")

function start_chasing_explosion_timer.evaluate()
  timer.performWithDelay(game_scene_config.explosion_delay,
   chasing_explosion_timer_listener.evaluate)
end

return start_chasing_explosion_timer
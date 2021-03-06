start_chasing_explosion_timer = {}

game_scene_config = game_scene_config or require("config.game_scene_config")
chasing_explosion_timer_listener = chasing_explosion_timer_listener or require("scene.chasing_explosion_timer_listener")
explosion_timer = explosion_timer or require("explosion.explosion_timer")

function start_chasing_explosion_timer.evaluate()
  explosion_timer = timer.performWithDelay(game_scene_config.explosion_delay,
   chasing_explosion_timer_listener.evaluate)
end

return start_chasing_explosion_timer
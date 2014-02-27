box_collision_listener = {}

update_stage = update_stage or require("scene.game.update_stage")
explosion_timer = explosion_timer or require("explosion.explosion_timer")
replace_with_explosion = replace_with_explosion or require("scene.game.replace_with_explosion")
chick_jump = chick_jump or require("scene.game.chick_jump")
chick_ignite = chick_ignite or require("chick.chick_ignite")
game_scene_config = game_scene_config or require("config.game_scene_config")

function box_collision_listener.evaluate(event)
  Runtime:removeEventListener("enterFrame", update_stage.evaluate)
  Runtime:removeEventListener("tap", chick_jump.evaluate)
  timer.cancel(explosion_timer)
  replace_with_explosion.evaluate(event.target)
  chick_ignite.evaluate()
  chick:setLinearVelocity(game_scene_config.chick_bounce_horizontal_velocity,
   game_scene_config.chick_bounce_vertical_velocity)
end

return box_collision_listener
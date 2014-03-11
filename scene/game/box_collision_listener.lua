box_collision_listener = {}

update_stage = update_stage or require("scene.game.update_stage")
explosion_timer = explosion_timer or require("explosion.explosion_timer")
destroy_obstacle_group = destroy_obstacle_group or require("scene.game.obstacle.destroy_obstacle_group")
chick_jump = chick_jump or require("scene.game.chick_jump")
chick_ignite = chick_ignite or require("chick.chick_ignite")
game_scene_config = game_scene_config or require("config.game_scene_config")
chick_bounce_collision_listener = chick_bounce_collision_listener or require("scene.game.chick_bounce_collision_listener")
chick_landing = chick_landing or require("scene.game.chick.chick_landing")

function box_collision_listener.evaluate(event)
  print("Box collide at x="..event.x.." y="..event.y)
  print("element"..event.selfElement)

  if event.selfElement == 1 then
    Runtime:removeEventListener("enterFrame", update_stage.evaluate)
    Runtime:removeEventListener("tap", chick_jump.evaluate)
    timer.cancel(explosion_timer)
    destroy_obstacle_group.evaluate(event.target)
    chick:setLinearVelocity(game_scene_config.chick_bounce_horizontal_velocity,
      game_scene_config.chick_bounce_vertical_velocity)
    timer.performWithDelay(50, box_collision_listener.delayAddCollision)
    chick_ignite.evaluate()
  else
    chick_landing.evaluate()
  end

end

function box_collision_listener.delayAddCollision()
  chick:addEventListener("collision", chick_bounce_collision_listener.evaluate)
end

return box_collision_listener
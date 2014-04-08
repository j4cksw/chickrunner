box_collision_listener = {}

update_stage = update_stage or require("scene.game.update_stage")
explosion_timer = explosion_timer or require("explosion.explosion_timer")
destroy_all_obstacles = destroy_all_obstacles or require("scene.game.obstacle.destroy_all_obstacles")
chick_jump = chick_jump or require("scene.chick_jump")
chick_ignite = chick_ignite or require("chick.chick_ignite")
game_scene_config = game_scene_config or require("config.game_scene_config")
chick_bounce_collision_listener = chick_bounce_collision_listener or require("scene.game.chick_bounce_collision_listener")
stop_bgm = stop_bgm or require("scene.game.audio.stop_bgm")
play_box_explosion_sound = play_box_explosion_sound or require("box.play_box_explosion_sound")
play_gameover_sound = play_gameover_sound or require("scene.game.gameover.play_gameover_sound")
show_ads = show_ads or require("common.ads.show_ads")

function box_collision_listener.evaluate(event)
  if event.selfElement <= 1 then
    Runtime:removeEventListener("enterFrame", update_stage.evaluate)
    Runtime:removeEventListener("tap", chick_jump.evaluate)
    timer.cancel(explosion_timer)
    
    show_ads.evaluate()   
    play_box_explosion_sound.evaluate()
    destroy_all_obstacles.evaluate()
    
    chick:setLinearVelocity(game_scene_config.chick_bounce_horizontal_velocity,
      game_scene_config.chick_bounce_vertical_velocity)
    timer.performWithDelay(50, box_collision_listener.delayAddCollision)
    chick_ignite.evaluate()
    
    stop_bgm.evaluate()
  end
end

function box_collision_listener.delayAddCollision()
  play_gameover_sound.evaluate()
  chick:addEventListener("collision", chick_bounce_collision_listener.evaluate)
end

return box_collision_listener
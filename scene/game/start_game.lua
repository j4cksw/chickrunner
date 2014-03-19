start_game = {}

play_bgm = play_bgm or require("scene.game.audio.play_bgm")
initialize_score = initialize_score or require("scene.game.score.initialize_score")
create_chasing_explosion = create_chasing_explosion or require("scene.create_chasing_explosion")
create_explosion_core = create_explosion_core or require("scene.game.create_explosion_core")
start_chasing_explosion_timer = start_chasing_explosion_timer or require("scene.start_chasing_explosion_timer")
generate_obstacle = generate_obstacle or require("scene.game.obstacle.generate_obstacle")
obstacle_pattern = obstacle_pattern or require("config.obstacle_pattern")
update_stage = update_stage or require("scene.game.update_stage")
chick_jump = chick_jump or require("scene.chick_jump")
play_box_explosion_sound = play_box_explosion_sound or require("box.play_box_explosion_sound")


function start_game.evaluate(event)
  Runtime:removeEventListener( "tap", start_game.evaluate)
  play_bgm.evaluate()
  play_box_explosion_sound.evaluate()
  initialize_score.evaluate()
  create_chasing_explosion.evaluate()
  create_explosion_core.evaluate()
  start_chasing_explosion_timer.evaluate()
  generate_obstacle.evaluate(obstacle_pattern["short_space"])
  
  Runtime:addEventListener( "enterFrame", update_stage.evaluate )
  Runtime:addEventListener( "tap", chick_jump.evaluate)
end

return start_game
enter_ready_state = {}

initialize_ground = initialize_ground or require("ground.initialize_ground")
initialize_chick = initialize_chick or require("scene.initialize_chick")
generate_obstacles_from_config = generate_obstacles_from_config or require("scene.game.obstacle.generate_obstacles_from_config")
hide_all_obstacles = hide_all_obstacles or require("scene.game.obstacle.hide_all_obstacles")
explode_before_start = explode_before_start or require("scene.game.explode_before_start")

function enter_ready_state.evaluate()
  initialize_ground.evaluate()
  initialize_chick.evaluate()
  audio.play(chick_ready_sound)
  generate_obstacles_from_config.evaluate()
  hide_all_obstacles.evaluate()
  Runtime:addEventListener( "tap", explode_before_start.evaluate)
end

return enter_ready_state
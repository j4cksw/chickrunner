enter_ready_state = {}

initialize_ground = initialize_ground or require("ground.initialize_ground")
initialize_chick = initialize_chick or require("scene.initialize_chick")
explode_before_start = explode_before_start or require("scene.game.explode_before_start")

function enter_ready_state.evaluate()
  initialize_ground.evaluate()
  initialize_chick.evaluate()
  Runtime:addEventListener( "tap", explode_before_start.evaluate)
end

return enter_ready_state
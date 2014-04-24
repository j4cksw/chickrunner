ready_state_tap_listener = {}

explode_before_start = explode_before_start or require("scene.game.explode_before_start")

function ready_state_tap_listener.evaluate(event)
  explode_before_start.evaluate()
  Runtime:removeEventListener("tap", ready_state_tap_listener.evaluate)
end

return ready_state_tap_listener
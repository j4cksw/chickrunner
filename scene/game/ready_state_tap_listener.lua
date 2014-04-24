ready_state_tap_listener = {}

explode_before_start = explode_before_start or require("scene.game.explode_before_start")

function ready_state_tap_listener.evaluate(event)
  print("Tapped")
  for key, value in pairs(event) do
    print(key)
    print("..")
    print(value)
  end
  explode_before_start.evaluate()
  Runtime:removeEventListener("tap", ready_state_tap_listener.evaluate)
end

return ready_state_tap_listener
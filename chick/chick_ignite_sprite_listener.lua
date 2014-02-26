chick_ignite_sprite_listener = {}

chick_burn = chick_burn or require("chick.chick_burn")

function chick_ignite_sprite_listener.evaluate(event)
  if event.phase ~= "ended" then
    return
  end
  
  chick_burn.evaluate()
end

return chick_ignite_sprite_listener
chick_ignite_sprite_listener = {}

function chick_ignite_sprite_listener.evaluate(event)
  if event.phase ~= "ended" then
    return
  end
  
  chick:setSequence("burn")
  chick:play()
end

return chick_ignite_sprite_listener
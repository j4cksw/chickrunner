chick_collision_listener = {}

function chick_collision_listener.evaluate(event)
  chick:setSequence('normal')
  chick:play()
end

return chick_collision_listener
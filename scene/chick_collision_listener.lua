chick_collision_listener = {}

function chick_collision_listener.evaluate(event)
--  chick:removeEventListener("collision", 
--    chick_collision_listener.evaluate)
  if (event.phase == "began") then
    chick:setSequence('normal')
    chick:play()
  end
end

return chick_collision_listener
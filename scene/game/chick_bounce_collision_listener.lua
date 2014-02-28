chick_bounce_collision_listener = {}

function chick_bounce_collision_listener.evaluate(event)
  if event.phase ~= "began" and event.other.type ~= "ground" then
    return
  end 
  
  chick:removeEventListener("collision", chick_bounce_collision_listener.evaluate)
  chick:setSequence("dead")
end

return chick_bounce_collision_listener
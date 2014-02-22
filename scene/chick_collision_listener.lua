chick_collision_listener = {}

function chick_collision_listener.evaluate(event)
--  chick:removeEventListener("collision", 
--    chick_collision_listener.evaluate)
  if (event.phase == "began" and event.other.type == "ground") then
    print("Began collide")
    chick:setSequence('normal')
    chick:play()
    chick:removeEventListener("collision", chick_collision_listener.evaluate)
  end
end

return chick_collision_listener
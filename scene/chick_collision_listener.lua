chick_collision_listener = {}

function chick_collision_listener.evaluate(event)
  if (event.phase == "began") then
    print("Began collide")
    chick:setSequence('run')
    chick:play()
    chick:removeEventListener("collision", chick_collision_listener.evaluate)
  end
end

return chick_collision_listener
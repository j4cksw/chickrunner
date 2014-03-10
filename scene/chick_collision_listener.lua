chick_collision_listener = {}

function chick_collision_listener.evaluate(event)
  if event.phase == "began" and event.other.type == "ground" then
    print("Landing")
    chick:setSequence('run')
    chick:play()
    chick:removeEventListener("collision", chick_collision_listener.evaluate)
  end
end

return chick_collision_listener
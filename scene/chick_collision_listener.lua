chick_collision_listener = {}

function chick_collision_listener.evaluate(event)
  --print("Chick collided position x="..event.x.." y="..event.y)
  if event.phase == "began" and event.other.type == "ground" then
    print("Landing")
    chick.jumpCount = 0
    chick:setSequence('run')
    chick:play()
    chick:removeEventListener("collision", chick_collision_listener.evaluate)
  end
end

return chick_collision_listener
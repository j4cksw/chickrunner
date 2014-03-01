chick_bounce_collision_listener = {}

function chick_bounce_collision_listener.evaluate(event)
  print("Bounce collision!")
  print(event.other.type)
  if event.phase == "began" then
    if event.other.type == "ground" then
      chick:removeEventListener("collision", chick_bounce_collision_listener.evaluate)
      chick:setSequence("dead")
      chick:play()
      chick:setLinearVelocity(0,0)
      Runtime:addEventListener("tap", restart_game.evaluate)
    end
  elseif event.phase == "ended" then
    if event.other.type == "explosion_core" then
      chick.xScale = -1  
    end
  end 
  
end

return chick_bounce_collision_listener
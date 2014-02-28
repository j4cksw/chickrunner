chick_bounce_collision_listener = {}

chick_dead_sprite_listener = chick_dead_sprite_listener or require("scene.game.chick_dead_sprite_event_listener")

function chick_bounce_collision_listener.evaluate(event)
  print("Bounce collision!")
  print(event.other.type)
  if event.phase == "began" then
    if event.other.type == "ground" then
      chick:removeEventListener("collision", chick_bounce_collision_listener.evaluate)
      chick:setSequence("dead")
      chick:play()
      chick:setLinearVelocity(0,0)
      chick:addEventListener("sprite", chick_dead_sprite_listener.evaluate)
    end
  elseif event.phase == "ended" then
    if event.other.type == "explosion_core" then
      chick.xScale = -1  
    end
  end 
  
end

return chick_bounce_collision_listener
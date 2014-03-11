chick_bounce_collision_listener = {}

restart_game = restart_game or require("scene.game.restart_game")

function chick_bounce_collision_listener.evaluate(event)
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
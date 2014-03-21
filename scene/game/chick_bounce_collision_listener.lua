chick_bounce_collision_listener = {}

restart_game = restart_game or require("scene.game.restart_game")
chick_dead_sequence_ended_listener  = chick_dead_sequence_ended_listener or require("scene.game.chick.chick_dead_sequence_ended_listener")

function chick_bounce_collision_listener.evaluate(event)
  if event.phase == "began" then
    if event.other.type == "ground" then
      chick._functionListeners = nil
      chick._tableListeners = nil
      chick:setSequence("dead")
      chick:play()
      chick:setLinearVelocity(0,0)
      chick:addEventListener("sprite", chick_dead_sequence_ended_listener.evaluate)
      Runtime:addEventListener("tap", restart_game.evaluate)
    end
  elseif event.phase == "ended" then
    if event.other.type == "explosion_core" then
      chick.xScale = -1  
    end
  end 
  
end

return chick_bounce_collision_listener
chick_jump = {}

game_scene_config = game_scene_config or require("config.game_scene_config")

function chick_jump.evaluate()
  print(chick.sequence)
  if chick.sequence ~= "jump" then
    chick:setSequence("jump")
    chick:play()
    chick:setLinearVelocity(0, game_scene_config.chick_vertical_velocity)
    chick.y = chick.y-1
    chick:addEventListener("collision", chick_collision_listener.evaluate)
  end
end

return chick_jump
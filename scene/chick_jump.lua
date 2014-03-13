chick_jump = {}

game_scene_config = game_scene_config or require("config.game_scene_config")

function chick_jump.evaluate()
  if chick.jumpCount <= game_scene_config.chick_jump_count_limit then
    chick.jumpCount = chick.jumpCount+1
    chick:setSequence("jump")
    chick:play()
    chick:setLinearVelocity(0, game_scene_config.chick_jump_velocity)
    chick.y = chick.y-1
    chick:addEventListener("collision", chick_collision_listener.evaluate)
    audio.play(jump_sound)
  end
end

return chick_jump
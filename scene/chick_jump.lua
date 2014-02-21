chick_jump = {}

game_scene_config = game_scene_config or require("config.game_scene_config")

function chick_jump.evaluate()
  chick:setLinearVelocity(0, game_scene_config.chick_vertical_velocity)
  chick:setSequence("jump")
  chick:play()
end

return chick_jump
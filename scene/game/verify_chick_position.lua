verify_chick_position = {}

game_scene_config = game_scene_config or require("config.game_scene_config")

function verify_chick_position.evaluate()
  if chick.x < game_scene_config.chick_start and chick.sequence == "run" then
    chick:setLinearVelocity(100, 0.0)
  end
  if chick.x >= game_scene_config.chick_start and chick.sequence == "run" then
    chick:setLinearVelocity(0.0, 0.0)
  end
end

return verify_chick_position
verify_chick_position = {}

game_scene_config = game_scene_config or require("config.game_scene_config")

function verify_chick_position.evaluate()
  if chick.x < game_scene_config.chick_start then
    chick:setLinearVelocity(100, 0.0)
  end
end

return verify_chick_position
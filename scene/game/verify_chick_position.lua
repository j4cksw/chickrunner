verify_chick_position = {}

game_scene_config = game_scene_config or require("config.game_scene_config")

function verify_chick_position.evaluate()
  if chick.x < game_scene_config.chick_start and chick.sequence == "run" then
    if not chick_transition then
      chick_transition = transition.to(chick, {time=100, x=game_scene_config.chick_start, onComplete=removeTransition})
    end
  end
end

function removeTransition()
  chick_transition = nil
end

return verify_chick_position
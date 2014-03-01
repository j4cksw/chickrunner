chick_dead_sprite_listener = {}

restart_game = restart_game or require("scene.game.restart_game")

function chick_dead_sprite_listener.evaluate(event)
  if event.phase == "ended" then
    Runtime:addEventListener("tap", restart_game.evaluate)
  end
end

return chick_dead_sprite_listener
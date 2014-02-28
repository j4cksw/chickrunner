chick_dead_sprite_listener = {}

restart_game = restart_game or require("scene.game.restart_game")

function chick_dead_sprite_listener.evaluate(event)
  Runtime:addEventListener("tap", restart_game.evaluate)
end

return chick_dead_sprite_listener
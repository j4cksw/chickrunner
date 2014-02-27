create_explosion_core = {}

game_scene_config = game_scene_config or require("config.game_scene_config")

function create_explosion_core.evaluate()
  local x = game_scene_config.explosion_core_x
  local explosion_core = display.newRect(x, 1000, 10, 384)
end

return create_explosion_core
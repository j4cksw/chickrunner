create_explosion_core = {}

game_scene_config = game_scene_config or require("config.game_scene_config")
explosion_sprite_config = explosion_sprite_config or require("config.eplosion_sprite_config")

function create_explosion_core.evaluate()
  local width = game_scene_config.explosion_core_width
  local height = explosion_sprite_config.options.height

  local explosion_core = display.newRect(0, 0, width, height)
  
  local x = game_scene_config.explosion_core_x
  explosion_core.x = x
end

return create_explosion_core
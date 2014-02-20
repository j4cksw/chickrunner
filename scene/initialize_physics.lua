initialize_physics = {}

physics = physics or require("physics")
game_scene_config = game_scene_config or require("config.game_scene_config")

function initialize_physics.evaluate()
  physics.setDrawMode(game_scene_config.draw_mode)
  physics.start()
  physics.setGravity(0, game_scene_config.gravity)
  
end

return initialize_physics
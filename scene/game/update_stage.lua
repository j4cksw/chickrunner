update_stage = {}

game_scene_config = game_scene_config or require("config.game_scene_config")
move_ground = move_ground or require("ground.move_ground")
move_explosion = move_explosion or require("explosion.move_explosion")
move_obstacles = move_obstacles or require("scene.game.obstacle.move_obstacles")

function update_stage.evaluate()
  move_ground.evaluate()
  move_explosion.evaluate(game_scene_config.game_speed)
  move_obstacles.evaluate()
end

return update_stage
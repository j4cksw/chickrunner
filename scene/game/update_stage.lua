update_stage = {}

game_scene_config = game_scene_config or require("config.game_scene_config")
move_ground = move_ground or require("ground.move_ground")
move_explosion = move_explosion or require("explosion.move_explosion")
move_box = move_box or require("box.move_box")
box_queue = box_queue or require("box.box_queue")

function update_stage.evaluate()
  move_ground.evaluate()
  move_explosion.evaluate(game_scene_config.game_speed)
  move_box.evaluate(box_queue[1], game_scene_config.game_speed)
end

return update_stage
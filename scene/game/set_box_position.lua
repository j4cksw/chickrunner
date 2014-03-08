set_box_position = {}

game_scene_config = game_scene_config or require("config.game_scene_config")
get_ground_vertical_position = get_ground_vertical_position or require("scene.get_ground_block_image_sheet")
obstacle_queue = obstacle_queue or require("scene.game.obstacle.obstacle_queue")

function set_box_position.evaluate(box_sprite)
  local last_obstacle = obstacle_queue[#obstacle_queue]
  local last_obstacle_element = last_obstacle[last_obstacle.numChildren]
  box_sprite.x = (last_obstacle_element.x + (last_obstacle_element.contentWidth/2))
  box_sprite.y = get_ground_vertical_position.evaluate(box_sprite)
end

return set_box_position
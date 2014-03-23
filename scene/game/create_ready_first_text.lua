create_ready_first_text = {}

game_scene_config = game_scene_config or require("config.game_scene_config")

function create_ready_first_text.evaluate(pivot)
  return display.newText("TO",
       display.contentCenterX,
       pivot.y+game_scene_config.ready_first_text_y_offset,
       fontname, 
       game_scene_config.ready_first_text_size)
end

return create_ready_first_text
create_score_text = {}

game_scene_config = game_scene_config or require("config.game_scene_config")

function create_score_text.evaluate()
  display.newText("0 m", 
    display.contentCenterX, 
    game_scene_config.score_text_y, 
    "ArcadeClassic", 
    120)
end

return create_score_text
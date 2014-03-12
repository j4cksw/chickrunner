create_score_text = {}

game_scene_config = game_scene_config or require("config.game_scene_config")
get_fontname_by_platform = get_fontname_by_platform or require("utils.get_fontname_by_platform")

function create_score_text.evaluate()
  display.newText("0 m", 
    display.contentCenterX, 
    game_scene_config.score_text_y, 
    get_fontname_by_platform.evaluate(), 
    game_scene_config.score_text_size)
end

return create_score_text
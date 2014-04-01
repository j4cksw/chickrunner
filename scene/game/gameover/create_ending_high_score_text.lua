create_ending_high_score_text = {}

game_scene_config = game_scene_config or require("config.game_scene_config")
create_text = create_text or require("common.text.create_text")

function create_ending_high_score_text.evaluate()
  ending_high_score_text = create_text.evaluate(string.format(game_scene_config.ending_high_score_text_format, game_stat.high_score),
    display.contentCenterX,
    game_scene_config.ending_high_score_text_y,
    game_scene_config.ending_score_text_size)
end

return create_ending_high_score_text
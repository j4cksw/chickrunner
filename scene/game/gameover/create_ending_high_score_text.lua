create_ending_high_score_text = {}

gameover_ui_config = gameover_ui_config or require("config.gameover_ui_config")
create_text = create_text or require("common.text.create_text")

function create_ending_high_score_text.evaluate()
  ending_high_score_text = create_text.evaluate(string.format(gameover_ui_config.ending_high_score_text_format, game_stat.high_score),
    display.contentCenterX,
    gameover_ui_config.ending_high_score_text_y,
    gameover_ui_config.ending_score_text_size)
  ending_high_score_text.anchorX = 0
end

return create_ending_high_score_text
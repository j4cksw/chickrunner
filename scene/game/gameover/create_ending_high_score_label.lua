create_ending_high_score_label = {}

gameover_ui_config = gameover_ui_config or require("config.gameover_ui_config")

function create_ending_high_score_label.evaluate()
  ending_high_score_label = display.newImage(gameover_ui_config.ending_high_score_label_image_path)
  ending_high_score_label.x = gameover_ui_config.ending_high_score_label_x
  ending_high_score_label.y = gameover_ui_config.ending_high_score_label_y
end

return create_ending_high_score_label
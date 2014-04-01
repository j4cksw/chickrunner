create_score_panel_background = {}

gameover_ui_config = gameover_ui_config or require("config.gameover_ui_config")

function create_score_panel_background.evaluate()
  score_panel_background = display.newImage(gameover_ui_config.score_panel_background_image_path)
  score_panel_background.x = display.contentCenterX
  score_panel_background.y = gameover_ui_config.score_panel_background_image_y
end

return create_score_panel_background
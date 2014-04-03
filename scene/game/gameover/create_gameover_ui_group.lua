create_gameover_ui_group = {}

function create_gameover_ui_group.evaluate()
  gameover_ui_group = display.newGroup()
  gameover_ui_group:insert(gameover_title_image)
  gameover_ui_group:insert(score_panel_background)
  gameover_ui_group:insert(ending_score_label)
  gameover_ui_group:insert(ending_score_text)
  gameover_ui_group:insert(ending_high_score_text)
  gameover_ui_group:insert(play_again_button)
end

return create_gameover_ui_group
create_gameover_ui_group = {}

function create_gameover_ui_group.evaluate()
  gameover_ui_group = display.newGroup()
  gameover_ui_group:insert(gameover_title_image)
  gameover_ui_group:insert(score_panel_background)
end

return create_gameover_ui_group
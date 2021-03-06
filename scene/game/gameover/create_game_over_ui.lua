create_game_over_ui = {}

check_high_score = check_high_score or require("scene.game.check_high_score")
create_gameover_title_image = create_gameover_title_image or require("scene.game.gameover.create_gameover_title_image")
create_score_panel = create_score_panel or require("scene.game.gameover.create_score_panel")
create_play_again_button = create_play_again_button or require("scene.game.gameover.create_play_again_button")
create_gameover_ui_group = create_gameover_ui_group or require("scene.game.gameover.create_gameover_ui_group")

function create_game_over_ui.evaluate()
  score_text.isVisible = false
  create_gameover_title_image.evaluate()
  check_high_score.evaluate()
  gameover_ui_group = display.newGroup()
  create_score_panel.evaluate()
  create_play_again_button.evaluate()
  
  create_gameover_ui_group.evaluate()
end

return create_game_over_ui
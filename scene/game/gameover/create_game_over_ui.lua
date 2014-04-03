create_game_over_ui = {}

check_high_score = check_high_score or require("scene.game.check_high_score")
show_ads = show_ads or require("common.ads.show_ads")
create_ending_score_text = create_ending_score_text or require("scene.game.gameover.create_ending_score_text")
create_ending_high_score_text = create_ending_high_score_text or require("scene.game.gameover.create_ending_high_score_text")
create_gameover_title_image = create_gameover_title_image or require("scene.game.gameover.create_gameover_title_image")
create_score_panel_background = create_score_panel_background or require("scene.game.gameover.create_score_panel_background")
create_ending_score_label = create_ending_score_label or require("scene.game.gameover.create_ending_score_label")
create_play_again_button = create_play_again_button or require("scene.game.gameover.create_play_again_button")
create_gameover_ui_group = create_gameover_ui_group or require("scene.game.gameover.create_gameover_ui_group")

function create_game_over_ui.evaluate()
  show_ads.evaluate()
  score_text.isVisible = false
  create_gameover_title_image.evaluate()
  create_score_panel_background.evaluate()
  create_ending_score_text.evaluate()
  check_high_score.evaluate()
  create_ending_high_score_text.evaluate()
  create_ending_score_label.evaluate()
  create_play_again_button.evaluate()
  create_gameover_ui_group.evaluate()
end

return create_game_over_ui
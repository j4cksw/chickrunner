create_game_over_ui = {}

check_high_score = check_high_score or require("scene.game.check_high_score")
show_ads = show_ads or require("common.ads.show_ads")
create_ending_score_text = create_ending_score_text or require("scene.game.gameover.create_ending_score_text")
create_ending_high_score_text = create_ending_high_score_text or require("scene.game.gameover.create_ending_high_score_text")
create_gameover_title_image = create_gameover_title_image or require("scene.game.gameover.create_gameover_title_image")

function create_game_over_ui.evaluate()
  show_ads.evaluate()
  score_text.isVisible = false
  create_gameover_title_image.evaluate()
  create_ending_score_text.evaluate()
  check_high_score.evaluate()
  create_ending_high_score_text.evaluate()
end

return create_game_over_ui
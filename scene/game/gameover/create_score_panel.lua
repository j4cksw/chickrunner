create_score_panel = {}

create_ending_score_text = create_ending_score_text or require("scene.game.gameover.create_ending_score_text")
create_ending_high_score_text = create_ending_high_score_text or require("scene.game.gameover.create_ending_high_score_text")
create_score_panel_background = create_score_panel_background or require("scene.game.gameover.create_score_panel_background")
create_ending_score_label = create_ending_score_label or require("scene.game.gameover.create_ending_score_label")
create_ending_high_score_label = create_ending_high_score_label or require("scene.game.gameover.create_ending_high_score_label")

function create_score_panel.evaluate()
  create_score_panel_background.evaluate()
  create_ending_score_label.evaluate()
  create_ending_score_text.evaluate()
  create_ending_high_score_label.evaluate()
  create_ending_high_score_text.evaluate()
end

return create_score_panel
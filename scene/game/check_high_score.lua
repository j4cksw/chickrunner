check_high_score = {}

save_game_stat_file = save_game_stat_file or require("utils.save_game_stat_file")
create_new_high_score_image = create_new_high_score_image or require("scene.game.gameover.create_new_high_score_image")

function check_high_score.evaluate()
  if current_score > game_stat.high_score then
    game_stat.high_score = current_score
    save_game_stat_file.evaluate()
    create_new_high_score_image.evaluate()
  end
end

return check_high_score
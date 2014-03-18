check_high_score = {}

save_game_stat_file = save_game_stat_file or require("utils.save_game_stat_file")

function check_high_score.evaluate()
  if current_score > game_stat.high_score then
    game_stat.high_score = current_score
    save_game_stat_file.evaluate()
  end
end

return check_high_score
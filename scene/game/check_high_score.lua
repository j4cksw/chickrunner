check_high_score = {}

function check_high_score.evaluate()
  if current_score > game_stat.high_score then
    game_stat.high_score = current_score
  end
end

return check_high_score
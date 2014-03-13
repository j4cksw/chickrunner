increase_score = {}

function increase_score.evaluate()
  current_score = current_score+1
  score_text.text = current_score.."m"
end

return increase_score
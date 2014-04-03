create_ending_score_label = {}

function create_ending_score_label.evaluate()
  ending_score_label = display.newImage("img/screen/gameover/score.png")
  ending_score_label.x = 220
  ending_score_label.y = 374
end

return create_ending_score_label
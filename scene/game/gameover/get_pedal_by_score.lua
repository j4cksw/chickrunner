get_pedal_by_score = {}

function get_pedal_by_score.evaluate()
  if current_score >=150 then
    return "img/screen/gameover/pendal_silver.png"
  elseif current_score >=100 then
    return "img/screen/gameover/pendal_bronze.png"
  elseif current_score >= 50 then
    return "img/screen/gameover/pendal_red.png"
  end
end

return get_pedal_by_score
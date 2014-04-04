get_pedal_by_score = {}

_ = require("lib.underscore")

local pedal_config = {
  {50, "red"},
  {100, "bronze"},
  {150, "silver"},
  {200, "gold"},
  {250, "platinum"}, 
}

function get_pedal_by_score.evaluate()
  
  for index, value in pairs(_.reverse(pedal_config)) do

    if current_score >= value[1]  then
      return string.format("img/screen/gameover/pendal_%s.png", value[2])
    end
  end

end

return get_pedal_by_score
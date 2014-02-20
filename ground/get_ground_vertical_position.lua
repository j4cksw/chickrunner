get_ground_vertical_position = {}

function get_ground_vertical_position.evaluate(object)
  return ground_config.vertical_start - (object.contentHeight/2) - 64
end

return get_ground_vertical_position
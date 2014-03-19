explode_before_start = {}

function explode_before_start.evaluate()
  Runtime:removeEventListener("tap", explode_before_start.evaluate)
end

return explode_before_start
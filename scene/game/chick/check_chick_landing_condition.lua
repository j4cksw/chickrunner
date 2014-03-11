check_chick_landing_condition = {}

function check_chick_landing_condition.evaluate(event)
  local result = false
  if event.phase == "began" then
    if event.other.type == "ground" then
      result = true
    elseif event.other.type == "box" and event.otherElement > 1 then
      result = true
    end
  end
  return result
end

return check_chick_landing_condition
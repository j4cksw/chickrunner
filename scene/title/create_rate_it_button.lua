create_rate_it_button = {}

widget = widget or require("widget")

function create_rate_it_button.evaluate()
  local rate_it_button = widget.newButton({
    id="rate-it",
    defaultFile="img/ui/rate.png"
  })
  
  rate_it_button.x = 583
  rate_it_button.y = 1161
end

return create_rate_it_button
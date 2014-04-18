create_rate_it_button = {}

widget = widget or require("widget")

function create_rate_it_button.evaluate()
  widget.newButton({
    id="rate-it",
    defaultFile="img/ui/rate.png"
  })
end

return create_rate_it_button
create_rate_it_button = {}

widget = widget or require("widget")
insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")

function create_rate_it_button.evaluate()
  local rate_it_button = widget.newButton({
    id="rate-it",
    defaultFile="img/ui/rate.png"
  })
  
  rate_it_button.x = 583
  rate_it_button.y = 1161
  
  insert_to_current_view_group.evaluate(rate_it_button)
end

return create_rate_it_button
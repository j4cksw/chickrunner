create_logo_image = {}

insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")

function create_logo_image.evaluate()
  local logo_image = display.newImage("img/screen/title/logo.png")
  logo_image.x = display.contentCenterX
  logo_image.y = 370
  insert_to_current_view_group.evaluate(logo_image)
end

return create_logo_image
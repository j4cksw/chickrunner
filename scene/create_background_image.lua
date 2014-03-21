create_background_image = {}

insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")

function create_background_image.evaluate()
  local background_image = display.newImage("img/background/bg.png")
  insert_to_current_view_group.evaluate(background_image)
  
  background_image.x = display.contentCenterX
  background_image.y = display.contentCenterY
end

return create_background_image
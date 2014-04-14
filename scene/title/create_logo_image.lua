create_logo_image = {}

title_scene_config = title_scene_config or require("config.title_scene_config")
insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")

function create_logo_image.evaluate()
  local logo_image = display.newImage(title_scene_config.logo_image_file)
  logo_image.x = title_scene_config.logo_image_x
  logo_image.y = title_scene_config.logo_image_y
  insert_to_current_view_group.evaluate(logo_image)
end

return create_logo_image
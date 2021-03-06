create_box_image_sheet = {}

graphics = graphics or require("graphics")
box_sprite_config = box_sprite_config or require("config.box_sprite_config")

function create_box_image_sheet.evaluate()
  local path = box_sprite_config.path
  local options = box_sprite_config.options
  local result = graphics.newImageSheet(path, options)
  
  box_image_sheet = result
end

return create_box_image_sheet
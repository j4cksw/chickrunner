create_chick_image_sheet = {}

graphics = graphics or require("graphics")
chick_sprite_config = chick_sprite_config or require("config.chick_sprite_config")

function create_chick_image_sheet.evaluate()
  graphics.newImageSheet(chick_sprite_config.path,
    chick_sprite_config.options)
end

return create_chick_image_sheet
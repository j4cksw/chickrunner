create_explosion_image_sheet = {}

explosion_sprite_config = explosion_sprite_config or require("config.explosion_sprite_config")

function create_explosion_image_sheet.evaluate()
  display.newImageSheet(explosion_sprite_config.path,
    explosion_sprite_config.options)
end

return create_explosion_image_sheet
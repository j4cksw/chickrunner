create_chick_sprite = {}

chick_sprite_config = chick_sprite_config or require("config.chick_sprite_config")

function create_chick_sprite.evaluate()
  display.newSprite(chick_image_sheet, chick_sprite_config.sequenceData)
end

return create_chick_sprite
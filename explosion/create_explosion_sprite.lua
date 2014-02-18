create_explosion_sprite = {}

explosion_sprite_config = explosion_sprite_config or require("config.explosion_sprite_config")

function create_explosion_sprite.evaluate(x, y)
  local explosion_sprite = display.newSprite(explosion_image_sheet, 
    explosion_sprite_config.sequenceData)
end

return create_explosion_sprite
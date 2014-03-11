create_box_sprite = {}

display = display or require("display")
box_sprite_config = box_sprite_config or require("config.box_sprite_config")

function create_box_sprite.evaluate()
  local box_sprite = display.newSprite(box_image_sheet, box_sprite_config.sequence_data)
  
  box_sprite:setSequence("tnt")
  box_sprite.type = "box"
  box_sprite.isFixedRotation = true
  return box_sprite
end

return create_box_sprite
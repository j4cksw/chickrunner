create_chick_sprite = {}

chick_sprite_config = chick_sprite_config or require("config.chick_sprite_config")
ground_config = ground_config or require("config.ground_config")
insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")

function create_chick_sprite.evaluate()
  local chick_sprite = display.newSprite(chick_image_sheet, chick_sprite_config.sequenceData)
  
  insert_to_current_view_group.evaluate(chick_sprite)
 
  chick_sprite:setSequence("normal")
  chick_sprite:play()
  
  return chick_sprite
end

return create_chick_sprite
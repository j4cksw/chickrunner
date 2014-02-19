create_explosion_sprite = {}

explosion_sprite_config = explosion_sprite_config or require("config.explosion_sprite_config")
insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")

function create_explosion_sprite.evaluate()
  local explosion_sprite = display.newSprite(explosion_image_sheet, 
    explosion_sprite_config.sequenceData)
    
  insert_to_current_view_group.evaluate(explosion_sprite)
  
  explosion_sprite:setSequence("normal")
  explosion_sprite:play()
  
  return explosion_sprite
end

return create_explosion_sprite
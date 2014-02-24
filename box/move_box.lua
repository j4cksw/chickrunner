move_box = {}

function move_box.evaluate(box_sprite, speed)
  box_sprite.x = box_sprite.x + speed
end

return move_box
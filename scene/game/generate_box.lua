generate_box = {}

create_box_sprite = create_box_sprite or require("box.create_box_sprite")
insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")
set_box_position = set_box_position or require("scene.game.set_box_position")

function generate_box.evaluate()
  local box_sprite = create_box_sprite.evaluate()
  insert_to_current_view_group.evaluate(box_sprite)
  set_box_position.evaluate(box_sprite)
end

return generate_box
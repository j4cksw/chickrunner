generate_box = {}

create_box_sprite = create_box_sprite or require("box.create_box_sprite")
insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")

function generate_box.evaluate()
  local box_sprite = create_box_sprite.evaluate()
  insert_to_current_view_group.evaluate(box_sprite)
end

return generate_box
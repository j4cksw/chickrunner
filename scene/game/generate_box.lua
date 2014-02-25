generate_box = {}

create_box_sprite = create_box_sprite or require("box.create_box_sprite")
insert_to_current_view_group = insert_to_current_view_group or require("scene.insert_to_current_view_group")
set_box_position = set_box_position or require("scene.game.set_box_position")
insert_to_box_queue = insert_to_box_queue or require("scene.game.insert_to_box_queue")
add_physics_body_to_box = add_physics_body_to_box or require("box.add_physics_body_to_box")

function generate_box.evaluate()
  local box_sprite = create_box_sprite.evaluate()
  insert_to_current_view_group.evaluate(box_sprite)
  set_box_position.evaluate(box_sprite)
  insert_to_box_queue.evaluate(box_sprite)
  add_physics_body_to_box.evaluate(box_sprite)
end

return generate_box
generate_box = {}

create_box_sprite = create_box_sprite or require("box.create_box_sprite")

function generate_box.evaluate()
  create_box_sprite.evaluate()
end

return generate_box
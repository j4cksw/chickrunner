initialize_chick = {}

create_chick_sprite = create_chick_sprite or require("chick.create_chick_sprite")

function initialize_chick.evaluate()
  local chick_sprite = create_chick_sprite.evaluate()
end

return initialize_chick
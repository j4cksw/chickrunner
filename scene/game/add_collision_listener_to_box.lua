add_collision_listener_to_box = {}

box_collision_listener = box_collision_listener or require("scene.game.box_collision_listener")

function add_collision_listener_to_box.evaluate(box_sprite)
  box_sprite:addEventListener("collision",
    box_collision_listener.evaluate)
end

return add_collision_listener_to_box
box_collision_listener = {}

update_stage = update_stage or require("scene.game.update_stage")

function box_collision_listener.evaluate(event)
  Runtime:removeEventListener("enterFrame", update_stage.evaluate)
end

return box_collision_listener
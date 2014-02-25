update_stage = {}

move_ground = move_ground or require("ground.move_ground")

function update_stage.evaluate()
  move_ground.evaluate()
end

return update_stage
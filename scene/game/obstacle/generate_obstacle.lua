generate_obstacle = {}
generate_box = generate_box or require("scene.game.generate_box")

function generate_obstacle.evaluate()
  generate_box.evaluate()
end

return generate_obstacle
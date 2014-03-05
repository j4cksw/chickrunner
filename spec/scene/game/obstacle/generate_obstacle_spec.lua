describe("generate_obstacle", function()
  local generate_obstacle
  
  setup(function()
    generate_box = {}
    stub(generate_box, "evaluate")
    
    generate_obstacle = require("scene.game.obstacle.generate_obstacle")
  end)
  
  it("Evaluate generate box", function()
    --when
    generate_obstacle.evaluate()
    --then
    assert.stub(generate_box.evaluate).was_called()
  end)
end)
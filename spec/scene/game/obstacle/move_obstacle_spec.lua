describe("move_obstacle", function()
  local move_obstacle
  
  setup(function()
    move_obstacle = require("scene.game.obstacle.move_obstacle")
  end)
  
  it("Move element in obstacle", function()
    -- given
    local fake_obstacle = {
      { x=5 },
      numChildren=1
    }
    game_scene_config = {
      game_speed = 5
    }
    -- when
    move_obstacle.evaluate(fake_obstacle)
    -- then
    assert.are.equal(fake_obstacle[1].x, 0)
    
  end)
end)
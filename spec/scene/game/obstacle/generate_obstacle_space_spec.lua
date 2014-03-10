describe("generate_obstacle_space", function()
  local generate_obstacle_space
  
  local sample_obstacle_space = {}
  
  setup(function()
  
    game_scene_config = {
      obstacle_space_alpha = 0.75
    }
  
    display = {
      newRect = function()
        return sample_obstacle_space
      end
    }
    spy.on(display, "newRect")
    
    generate_obstacle_space = require("scene.game.obstacle.generate_obstacle_space")
  end)
  
  it("Evaluate display.newRect", function()
    -- when
    generate_obstacle_space.evaluate()
    -- then
    assert.stub(display.newRect).was_called_with(0, 0, 128, 128)
  end)
  
  it("Set alpha of rect from config", function()
    -- when
    generate_obstacle_space.evaluate()
    -- then
    assert.are.equal(sample_obstacle_space.alpha, game_scene_config.obstacle_space_alpha)
  end)
  
  it("Return a result of display.newRect", function()
    -- when
    local result = generate_obstacle_space.evaluate()
    -- then
    assert.are.same(result, sample_obstacle_space)
  end)
end)
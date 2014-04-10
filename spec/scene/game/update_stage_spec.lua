describe("update_stage", function()
  local update_stage
  
  setup(function()
    move_ground = {}
    stub(move_ground, "evaluate")
    
    move_explosion = {}
    stub(move_explosion, "evaluate")
    
    move_obstacles = {}
    stub(move_obstacles, "evaluate")
    
    verify_chick_position = {}
    stub(verify_chick_position, "evaluate")
    
    remove_left_obstacle = {}
    stub(remove_left_obstacle, "evaluate")
  
    game_scene_config = {
      game_speed = 9
    }
    
    update_stage = require("scene.game.update_stage")
  end)
  
  it("Evaluate move_ground", function()
    -- when
    update_stage.evaluate()
    -- then
    assert.stub(move_ground.evaluate).was_called()
  end)
  
  it("Evalaute move_explosion", function()
    -- when
    update_stage.evaluate()
    -- then
    assert.stub(move_explosion.evaluate).was_called_with(game_scene_config.game_speed)
  end)
  
  it("Evaluate move_obstacles", function()
    -- when
    update_stage.evaluate()
    -- then
    assert.stub(move_obstacles.evaluate).was_called()
  end)
  
  it("Evaluate verify_chick_position", function()
    update_stage.evaluate()
    
    assert.stub(verify_chick_position.evaluate).was_called()
  end)
  
  it("should remove left obstacles", function()
    update_stage.evaluate()
    
    assert.stub(remove_left_obstacle.evaluate).was_called()
  end)
end)
describe("update_stage", function()
  local update_stage
  
  setup(function()
    move_ground = {}
    stub(move_ground, "evaluate")
    
    move_explosion = {}
    stub(move_explosion, "evaluate") --(game_scene_config.game_speed)
    
    move_box = {}
    stub(move_box, "evaluate") --(box_queue[1], -game_scene_config.game_speed)
    
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
  
  it("Evaluate move_box", function()
    -- when
    update_stage.evaluate()
    -- then
    assert.stub(move_box.evaluate).was_called_with(box_queue[1],
     game_scene_config.game_speed)
    
  end)
end)
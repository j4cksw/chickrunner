describe("create_chasing_explosion", function()
  local create_chasing_explosion
  
  local explosion_sprite = {}
  
  setup(function()
    ground_config = { vertical_start=1000}
    explosion_sprite.contentHeight = 300
    
    game_scene_config = { chasing_explosion_start=192}
    
    create_explosion_sprite = {
      evaluate=function()
        return explosion_sprite
      end
    }
    spy.on(create_explosion_sprite, "evaluate")
    
    get_ground_vertical_position = {
      evaluate=function()
        return 1000
      end
    }
    spy.on(get_ground_vertical_position, "evaluate")
    
    push_to_explosion_queue = {}
    stub(push_to_explosion_queue, "evaluate")
    
    play_chasing_explosion_sound = {}
    stub(play_chasing_explosion_sound, "evaluate")
  
    create_chasing_explosion = require("scene.create_chasing_explosion")
  end)
  
  it("Evaluate create_explosion_sprite ", function()
    -- when
    create_chasing_explosion.evaluate()
    -- then
    assert.stub(create_explosion_sprite.evaluate).was_called()
  end)
  
  it("Set x to 192", function()
    -- when
    create_chasing_explosion.evaluate()
    -- then
    assert.are.equal(explosion_sprite.x, 192)
  end)
  
  it("Evalaute get_ground_vertical_position", function()
    -- when
    create_chasing_explosion.evaluate()
    -- then
    assert.stub(get_ground_vertical_position.evaluate).was_called_with(explosion_sprite)
  end)
  
  it("Set y to ground_config.vertical_start - explosion_sprite.contentHeight/2", function()
    -- when
    create_chasing_explosion.evaluate()
    -- then
    assert.are.equal(explosion_sprite.y, 1000)
  end)
  
  it("Evaluate push_to_explosion_queue", function()
    -- when
    create_chasing_explosion.evaluate()
    -- then
    assert.stub(push_to_explosion_queue.evaluate).was_called_with(explosion_sprite)
  end)
  
  it("Evalaute play_chasing_explosion_sound", function()
    -- when
    create_chasing_explosion.evaluate()
    -- then
    assert.stub(play_chasing_explosion_sound.evaluate).was_called()
  end)
  
end)

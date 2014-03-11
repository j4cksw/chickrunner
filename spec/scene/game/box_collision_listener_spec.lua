describe("box_collision_listener", function()
  local box_collision_listener
  
  local event
  
  local target_parent = {}
  
  local target = { }
  
  setup(function()
  
    event = {
      phase = "began",
      other = {
        type = "chick"
      },
      target = target,
      x=0,
      y=0,
      selfElement=1
    }
    
    Runtime = {}
    stub(Runtime, "removeEventListener")
    
    update_stage = {
      evaluate = function()end
    }
    
    explosion_timer = {}
    
    timer = {}
    stub(timer, "cancel")
    stub(timer, "performWithDelay")
    
    replace_with_explosion = {}
    stub(replace_with_explosion, "evaluate")
    
    destroy_obstacle_group = {}
    stub(destroy_obstacle_group, "evaluate")
    
    chick_jump = {
      evaluate = function()end
    }
    
    chick_ignite = {}
    stub(chick_ignite, "evaluate")
    
    chick = {}
    stub(chick, "setLinearVelocity")
    stub(chick, "addEventListener")
    
    game_scene_config = {
      chick_bounce_vertical_velocity = -500,
      chick_bounce_horizontal_velocity = -500
    }
    
    chick_bounce_collision_listener = {
      evaluate = function()end
    }
  
    box_collision_listener = require("scene.game.box_collision_listener")
  end)
  
  it("Remove enterFrame event", function()
    -- when
    box_collision_listener.evaluate(event)
    -- then
    assert.stub(Runtime.removeEventListener)
      .was_called_with(Runtime,
        "enterFrame",
         update_stage.evaluate)
  end)
  
  it("Cancel chasing explosion timer", function()
    -- when
    box_collision_listener.evaluate(event)
    -- then
    assert.stub(timer.cancel).was_called_with(explosion_timer)
  end)
  
  it("Evaluate destroy_obstacle_group", function()
    -- when
    box_collision_listener.evaluate(event)
    -- then
    assert.stub(destroy_obstacle_group.evaluate).was_called_with(event.target)
  end)
  
  it("Remove tap event", function()
    -- when
    box_collision_listener.evaluate(event)
    -- then
    assert.stub(Runtime.removeEventListener).was_called_with(Runtime, "tap", chick_jump.evaluate)
  end)
  
  it("Set linear velocity to chick", function()
    -- when
    box_collision_listener.evaluate(event)
    -- then
    assert.stub(chick.setLinearVelocity).was_called_with(chick, -500, -500)
  end)
  
  it("Set timer for delay adding collision event listener", function()
    -- when
    box_collision_listener.evaluate(event)
    -- then
    assert.stub(timer.performWithDelay).was_called_with(50, box_collision_listener.delayAddCollision)
  end)
  
  it("Evaluate chick_ignite", function()
    -- when
    box_collision_listener.evaluate(event)
    -- then
    assert.stub(chick_ignite.evaluate).was_called()
  end)
  
  it("Add chick_bounce_collission_listener", function()
    -- when
    box_collision_listener.delayAddCollision()
    -- then
    assert.stub(chick.addEventListener).was_called_with(chick, "collision", chick_bounce_collision_listener.evaluate)
  end)
  
end)
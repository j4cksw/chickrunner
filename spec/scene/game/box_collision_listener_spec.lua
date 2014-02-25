describe("box_collision_listener", function()
  local box_collision_listener
  
  local event
  
  local target = { x= 300}
  
  local explosion_sprite = {}
  
  setup(function()
  
    event = {
      phase = "began",
      other = {
        type = "chick"
      },
      target = target
    }
    
    Runtime = {}
    stub(Runtime, "removeEventListener")
    
    update_stage = {
      evaluate = function()end
    }
    
    explosion_timer = {}
    
    timer = {}
    stub(timer, "cancel")
    
    display = {}
    stub(display, "remove")
    
    create_explosion_sprite = {
      evaluate = function()
        return explosion_sprite
      end
    }
    spy.on(create_explosion_sprite, "evaluate")
  
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
  
  it("Remove box sprite", function()
    -- when
    box_collision_listener.evaluate(event)
    -- then
    assert.stub(display.remove).was_called_with(event.target)
  end)
  
  it("Create explosion sprite", function()
    -- when
    box_collision_listener.evaluate(event)
    -- then
    assert.stub(create_explosion_sprite.evaluate).was_called()
  end)
  
  it("Set x position to be same as box last position", function()
    -- when
    box_collision_listener.evaluate(event)
    -- then
    assert.are.equal(explosion_sprite.x, target.x)
  end)
  
  it("Set y position as a result of get_ground_vertical_position")
  
end)
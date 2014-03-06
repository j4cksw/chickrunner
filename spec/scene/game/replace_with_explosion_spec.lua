describe("replace_with_explosion", function()
  local replace_with_explosion
  
  local target = { x=100}
  
  local explosion_sprite = {}
  
  setup(function()
    
    display = {}
    stub(display, "remove")
    
    create_explosion_sprite = {
      evaluate = function()
        return explosion_sprite
      end
    }
    spy.on(create_explosion_sprite, "evaluate")
    
    get_groud_vertical_position = {
      evaluate = function()
        return 1000
      end
    }
    
    replace_with_explosion = require("scene.game.replace_with_explosion")
  end)
  
  it("Remove target sprite", function()
    -- when
    replace_with_explosion.evaluate(target)
    -- then
    assert.stub(display.remove).was_called_with(target)
  end)
  
  it("Remove from queue", function()
    -- given
    obstacle_queue = { {} }
    -- when
    replace_with_explosion.evaluate(target)
    -- then
    assert.are.same({}, obstacle_queue)
  end)
  
  it("Create explosion sprite", function()
    -- when
    replace_with_explosion.evaluate(target)
    -- then
    assert.stub(create_explosion_sprite.evaluate).was_called()
  end)
  
  it("Set x position to be same as box last position", function()
    -- when
    replace_with_explosion.evaluate(target)
    -- then
    assert.are.equal(explosion_sprite.x, target.x)
  end)
  
  it("Set y position as a result of get_ground_vertical_position", function()
    -- when
    replace_with_explosion.evaluate(target)
    -- then
    assert.are.equal(explosion_sprite.y, 1000)
  end)
end)

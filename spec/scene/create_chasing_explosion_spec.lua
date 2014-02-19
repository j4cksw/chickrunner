describe("create_chasing_explosion", function()
  local create_chasing_explosion
  
  local explosion_sprite = {}
  
  setup(function()
    create_explosion_sprite = {
      evaluate=function()
        return explosion_sprite
      end
    }
    spy.on(create_explosion_sprite, "evaluate")
  
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
  
  it("Set y to ground.vertical_start + explosion.contentHeight/2")
end)

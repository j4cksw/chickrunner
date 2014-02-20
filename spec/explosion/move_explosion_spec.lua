describe("move_explosion", function()
  local move_explosion
  
  setup(function()
    move_explosion = require("explosion.move_explosion")
  end)
  
  it("Minus x position of every explosion sprite by a given speed", function()
    -- given
    local move_speed = 20
    local explosion_1 = { x = 100 }
    explosion_queue = { explosion_1 }
    -- when
    move_explosion.evaluate(move_speed)
    -- then
    assert.are.equal(explosion_1.x, 80)
  end)
  
  it("Minus x position of every explosion sprite by a given speed", function()
    -- given
    local move_speed = 20
    local explosion_1 = { x = 100 }
    local explosion_2 = { x = 120 }
    explosion_queue = { explosion_1, explosion_2 }
    -- when
    move_explosion.evaluate(move_speed)
    -- then
    assert.are.equal(explosion_1.x, 80)
    assert.are.equal(explosion_2.x, 100)
  end)
end)
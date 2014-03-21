describe("push_to_explosion_queue", function()
  local push_to_explosion_queue
  
  local new_explosion_sprite = {}
  
  setup(function()
    stub(new_explosion_sprite, "addEventListener")
    push_to_explosion_queue = require("explosion.push_to_explosion_queue")
  end)
  
  it("A given explosion_sprite should store in explosion_queue", function()
    explosion_queue = {}
    -- when
    push_to_explosion_queue.evaluate(new_explosion_sprite)
    -- then
    assert.are.equal(explosion_queue[1], new_explosion_sprite)
  end)
end)
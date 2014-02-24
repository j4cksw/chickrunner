describe("insert_to_box_queue", function()
  local insert_to_box_queue
  
  setup(function()
    box_queue = {}
    
    insert_to_box_queue = require("scene.game.insert_to_box_queue")
  end)
  
  it("Insert given box_sprite into box_queue", function()
    -- given
    local box_sprite = {}
    -- when
    insert_to_box_queue.evaluate(box_sprite)
    -- then
    assert.are.equal(box_sprite, box_queue[1])
  end)
end)
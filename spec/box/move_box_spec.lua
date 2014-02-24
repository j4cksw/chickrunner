describe("move_box", function()
  local move_box
  
  setup(function()
    move_box = require("box.move_box")
  end)
  
  it("decreate x position of box sprite by a given speed", function()
    -- given
    local box_sprite = { x=20 }
    -- when
    move_box.evaluate(box_sprite, -10)
    -- then
    assert.are.equal(box_sprite.x, 10)
  end)
end)
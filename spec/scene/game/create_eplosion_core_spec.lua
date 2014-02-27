describe("create_explosion_core", function()
  local create_explosion_core
  
  local explosion_rect = {}
  
  setup(function()
    display = {
      newRect = function()
        return explosion_rect
      end
    }
    spy.on(display, "newRect")
  
    create_explosion_core = require("scene.game.create_explosion_core")
  end)
  
  it("Create rectangle", function()
    -- when
    create_explosion_core.evaluate()
    -- then
    assert.stub(display.newRect).was_called_with(96, 192, 10, 384)
  end)
  
  it("Set alpha of the rectangle to 0")
  
  it("Add physics body to the ractangle")
  
  it("Add collision event to the ractangle")
end)
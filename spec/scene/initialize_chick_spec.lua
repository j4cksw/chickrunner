describe("initialize_chick", function()
  local initialize_chick
  
  local chick_sprite = {}
  
  setup(function()
    create_chick_sprite = {
      evaluate = function()
        return chick_sprite
      end
    }
    spy.on(create_chick_sprite, "evaluate")
  
    initialize_chick = require("scene.initialize_chick")
  end)
  
  it("Evaluate create chick", function()
    -- when
    initialize_chick.evaluate()
    -- then
    assert.stub(create_chick_sprite.evaluate).was_called()
  end)
  
  it("Set position from config")
end)
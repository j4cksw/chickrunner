describe("generate_box", function()
  local generate_box
  
  setup(function()
    
    create_box_sprite = {
      evaluate = function()end
    }
    spy.on(create_box_sprite, "evaluate")
    
    generate_box = require("scene.game.generate_box")
  end)
  
  it("Evalaute create_box_sprite", function()
    -- when
    generate_box.evaluate()
    -- then
    assert.stub(create_box_sprite.evaluate).was_called()
  end)
end)
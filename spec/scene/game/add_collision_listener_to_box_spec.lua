describe("add_collision_listener_to_box", function()
  local add_collision_listener_to_box
  
  local box_sprite = {}
  
  setup(function()
    stub(box_sprite, "addEventListener")
    
    box_collision_listener = {
      evaluate = function()end
    }
  
    add_collision_listener_to_box = require("scene.game.add_collision_listener_to_box")
  end)
  
  it("Evalaute box_sprite:addEventListener with 'collision' and listner", function()
    -- when
    add_collision_listener_to_box.evaluate(box_sprite)
    -- then
    assert.stub(box_sprite.addEventListener)
      .was_called_with(box_sprite,
         "collision",
          box_collision_listener.evaluate)
  end)
  
end)
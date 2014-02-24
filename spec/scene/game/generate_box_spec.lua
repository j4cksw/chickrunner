describe("generate_box", function()
  local generate_box
  
  local box_sprite = {}
  
  setup(function()
    
    create_box_sprite = {
      evaluate = function()
        return box_sprite 
      end
    }
    spy.on(create_box_sprite, "evaluate")
    
    insert_to_current_view_group = {}
    stub(insert_to_current_view_group, "evaluate")
    
    generate_box = require("scene.game.generate_box")
  end)
  
  it("Evalaute create_box_sprite", function()
    -- when
    generate_box.evaluate()
    -- then
    assert.stub(create_box_sprite.evaluate).was_called()
  end)
  
  it("Evaluate insert_to_current_view_group", function()
    -- when
    generate_box.evaluate()
    -- then
    assert.stub(insert_to_current_view_group.evaluate).was_called_with(box_sprite)
  end)
  
  it("Evaluate set_box_position")
  
  it("Evaluate insert_to_box_queue")
end)
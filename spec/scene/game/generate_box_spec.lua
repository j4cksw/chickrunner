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
    
    add_physics_body_to_box = {}
    stub(add_physics_body_to_box, "evaluate")
    
    add_collision_listener_to_box = {}
    stub(add_collision_listener_to_box, "evaluate")
    
    generate_box = require("scene.game.generate_box")
  end)
  
  it("Evalaute create_box_sprite", function()
    -- when
    generate_box.evaluate()
    -- then
    assert.stub(create_box_sprite.evaluate).was_called()
  end)
  
  it("Evalaute add_physics_body_to_box", function()
    -- when
    generate_box.evaluate()
    -- then
    assert.stub(add_physics_body_to_box.evaluate).was_called_with(box_sprite)
  end)
  
  it("Evaluate add_collision_listener_to_box", function()
    -- when
    generate_box.evaluate()
    -- then
    assert.stub(add_collision_listener_to_box.evaluate).was_called_with(box_sprite)
  end)
end)
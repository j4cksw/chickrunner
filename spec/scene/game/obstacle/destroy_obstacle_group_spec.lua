describe("destroy_obstacle_group", function()
  local destroy_obstacle_group
  
  setup(function()
    replace_with_explosion = {}
    stub(replace_with_explosion, "evaluate")
    
    display = {}
    stub(display, "remove")
  
    destroy_obstacle_group = require("scene.game.obstacle.destroy_obstacle_group")
  end)
  
  it("Evaluate replace_with_explosion", function()
    -- given
    local obstacle_element = {
      type = "box",
      parent = nil
    }
    
    local obstacle_group = {
      obstacle_element,
      numChildren=1
    }
    
    obstacle_element.parent = obstacle_group
    
    -- when
    destroy_obstacle_group.evaluate(obstacle_group)
    -- then
    assert.stub(replace_with_explosion.evaluate).was_called_with(obstacle_element)
  end)
end)
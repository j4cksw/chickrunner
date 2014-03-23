describe("title_scene", function()
  local title_scene
  
  local scene = { 
    addEventListener = function ( ... )
      -- body
    end,
    view = {}
  }

  setup(function ( ... )
    storyboard = {
      newScene = function ( ... )
        return scene
      end
    }
    
    set_current_view_group = {}
    stub(set_current_view_group, "evaluate")
    
    title_scene = require("scene.title.title_scene")
  end)
  
  it("Set current view", function()
    -- when
    title_scene:createScene(event)
    -- then
    assert.stub(set_current_view_group.evaluate).was_called_with(scene.view)
  end)
  
  it("Evaluate create background image")
end)
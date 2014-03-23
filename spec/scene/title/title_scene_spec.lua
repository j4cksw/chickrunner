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
    
    widget = {
      newButton = function()
        return fake_button
      end 
    }
    spy.on(widget, "newButton")
    
    set_current_view_group = {}
    stub(set_current_view_group, "evaluate")
    
    create_background_image = {}
    stub(create_background_image, "evaluate")
    
    title_scene = require("scene.title.title_scene")
  end)
  
  it("Set current view", function()
    -- when
    title_scene:createScene(event)
    -- then
    assert.stub(set_current_view_group.evaluate).was_called_with(scene.view)
  end)
  
  it("Evaluate create background image", function()
    -- when
    title_scene:createScene(event)
    -- then
    assert.stub(create_background_image.evaluate).was_called()
  end)
  
  it("Create start button", function()
    -- when
    title_scene:createScene(event)
    -- then
    assert.stub(widget.newButton).
      was_called_with({
        id="start", 
        defaultFile="img/ui/start.png"
      })
  end)
  
  it("Set start button on centerr of screen")
  
  it("Go to game scene when push start button")
  
  it("Create ground")
  
  it("CReate game title image")
end)
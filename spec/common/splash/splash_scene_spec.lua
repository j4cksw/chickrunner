describe("splash_scene", function()
  local splash_scene
  
  local scene = { 
    addEventListener = function ( ... )
      -- body
    end,
    view = {}
  }
  
  local fake_logo = {"..."}
  
  setup(function()
    storyboard = {
      newScene = function ( ... )
        return scene
      end
    }
    
    display = {
      contentCenterX = 10,
      contentCenterY = 20,
      newImageRect = function()
        return fake_logo
      end
    }
    spy.on(display, "newImageRect")
    
    splash_scene = require("common.splash.splash_scene")
  end)
  
  it("Should show a logo image", function()
    splash_scene:createScene(event)
    
    assert.stub(display.newImageRect).was_called_with("img/splash/kongDev.jpg",600,488)
  end)
end)
describe("splash_scene", function()
  local splash_scene
  
  local scene = { 
    addEventListener = function ( ... )
      -- body
    end,
    view = {
      insert = function()end
    }
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
    
    set_current_view_group = {}
    stub(set_current_view_group, "evaluate")
    
    stub(scene.view, "insert")
    
    transition = {
      to = function()end
    }
    stub(transition, "to")
    
    timer = {}
    stub(timer, "performWithDelay")
    
    transit_after_splash_scene = {}
    stub(transit_after_splash_scene, "evaluate")
    
    splash_scene = require("common.splash.splash_scene")
  end)
  
  it("Should show a logo image", function()
    splash_scene:createScene(event)
    
    assert.stub(display.newImageRect).was_called_with("img/splash/logo.jpg",600,488)
  end)
  
  it("Should set logo image to center of screen", function()
    splash_scene:createScene(event)
    
    assert.are.equal(fake_logo.x, display.contentCenterX)
    assert.are.equal(fake_logo.y, display.contentCenterY)
  end)
  
  it("should set logo alpha to 0", function()
    splash_scene:createScene(event)
    
    assert.are.equal(fake_logo.alpha, 0)
  end)
  
  it("should insert to viewgroup", function()
    splash_scene:createScene(event)
    
    assert.stub(scene.view.insert).was_called_with(scene.view, fake_logo)
  end)
  
  it("should start fadein transition in enter scene", function()
    splash_scene:enterScene(event)
    
    assert.stub(transition.to).was_called_with(fake_logo , {time = 1000 , xScale = 1, yScale = 1, alpha = 1})
  end)
  
  it("should start exit timer", function()
    splash_scene:enterScene(event)
    
    assert.stub(timer.performWithDelay).was_called_with(2000, transit_after_splash_scene.evaluate)
  end)
end)
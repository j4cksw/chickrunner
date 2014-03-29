describe("transit_after_splash_scene", function()
  local transit_after_splash_scene
  
  setup(function()
    storyboard = {}
    stub(storyboard, "gotoScene")
    
    transit_after_splash_scene = require("common.splash.transit_after_splash_scene")
  end)
  
  it("should go to title_scene when timer end ", function()
    -- when
    transit_after_splash_scene.evaluate()
    -- then
    assert.stub(storyboard.gotoScene).was_called_with("scene.title.title_scene",{
      effect = "fade",
      time = 500})
  end)
end)
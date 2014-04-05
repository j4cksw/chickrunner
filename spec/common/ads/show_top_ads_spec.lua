describe("show_top_ads", function()
  local show_top_ads
  
  setup(function()
    show_top_ads = require("common.ads.show_top_ads")
  end)
  
  it("should show ads at the top of screen", function()
    show_top_ads.evaluate()
    
    assert.stub(ads.show).was_called_with("banner", 
      {
        x = display.screenOriginX,
        y = display.screenOriginY
      })
  end)
end)
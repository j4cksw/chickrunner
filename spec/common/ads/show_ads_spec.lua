describe("show_ads_spec", function()
  local show_ads
  
  setup(function()
    display = {
      screenOriginX = 500,
      screenOriginY = 1000,
      viewableContentHeight = 1500 
    }
    
    ads = {}
    stub(ads, "show")
    
    show_ads = require("common.ads.show_ads")
  end)
  
  it("should sho ads", function()
    show_ads.evaluate()
    
    assert.stub(ads.show).was_called_with("banner", 
      {
        x = display.screenOriginX,
        y = display.screenOriginY + display.viewableContentHeight - 90
      }) 
  end)
end)
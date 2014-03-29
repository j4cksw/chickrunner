describe("hide_ads", function()
  local hide_ads
  
  setup(function()
    ads = {}
    stub(ads, "hide")
    
    hide_ads = require("common.ads.hide_ads")
  end)
  
  it("should hide ads", function()
    hide_ads.evaluate()
    
    assert.stub(ads.hide).was_called()
  end)
end)
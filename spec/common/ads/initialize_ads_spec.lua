describe("initialize_ads", function()
  local initialize_ads
  
  setup(function()
    ads = {}
    stub(ads, "init")
    
    initialize_ads = require("common.ads.initialize_ads")
  end)
  
  it("should initialize ads", function()
    initialize_ads.evaluate()
    
    assert.stub(ads.init).was_called_with("admob", "a1534511cd248dc")
  end)
  
end)
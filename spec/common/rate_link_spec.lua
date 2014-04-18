describe("rate_link", function()
  local rate_link
  
  setup(function()
    system = {}
    stub(system, "getInfo")
    stub(system, "openURL")
  
    rate_link = require("common.rate_link")
  end)
  
  it("should get platform name from system", function()
    rate_link.open()
    
    assert.stub(system.getInfo).was_called_with("platformName")
  end)
  
  it("should open assigned rating link for Android", function()
    rate_link.open()
    
    assert.stub(system.openURL).was_called_with("market://details?id=com.kongdev.chickrunner")
  end)
end)
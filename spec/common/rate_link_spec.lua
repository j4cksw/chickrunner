describe("rate_link", function()
  local rate_link
  
  local fake_platform_name = ""
  
  setup(function()
    system = {
      getInfo = function()
        return fake_platform_name
      end
    }
    spy.on(system, "getInfo")
    stub(system, "openURL")
  
    rate_link = require("common.rate_link")
  end)
  
  it("should get platform name from system", function()
    rate_link.open()
    
    assert.stub(system.getInfo).was_called_with("platformName")
  end)
  
  it("should open rating link for Android", function()
    fake_platform_name = "Android"
    
    rate_link.open()
    
    assert.stub(system.openURL).was_called_with("market://details?id=com.kongdev.chickrunner")
  end)
  
  it("should open rating link for iOS", function()
    fake_platform_name = "iPhone OS"
    
    rate_link.open()
    
    assert.stub(system.openURL).was_called_with("itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa"
                 .. "/wa/viewContentsUserReviews?"
                 .. "type=Purple+Software&id="
                 .. "860430668")
  end)
end)
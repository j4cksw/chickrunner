describe("rate_link", function()
  local rate_link
  
  setup(function()
    system = {}
    stub(system, "openURL")
  
    rate_link = require("common.rate_link")
  end)
  
  it("should open assigned rating link", function()
    rate_link.open()
    
    assert.stub(system.openURL).was_called_with("market://details?id=com.kongdev.chickrunner")
  end)
end)
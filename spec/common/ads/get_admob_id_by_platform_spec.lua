describe("get_admob_id_by_platform", function()
  local get_admob_id_by_platform
  
  setup(function()
    get_admob_id_by_platform = require("common.ads.get_admob_id_by_platform")
  end)
  
  it("should return admob id by device platform", function()
    local result = get_admob_id_by_platform.evaluate()
    
    assert.are.equal(result, "a1534511cd248dc")
  end)
end)
describe("get_admob_id_by_platform", function()
  local get_admob_id_by_platform

  local fake_platform_name = ""
  local fake_model_name = ""
  
  setup(function()
    system = {
      getInfo = function(key)
        if key == "platformName" then
          return fake_platform_name
        elseif key == "model" then
          return fake_model_name
        end
      end
    }
    spy.on(system, "getInfo")

    admob_id_table = {
      ["Android"] = "a1534511cd248dc",
      ["iPhone OS"] = "a15350a7a1d099c"
    }

    get_admob_id_by_platform = require("common.ads.get_admob_id_by_platform")
  end)

  it("should return Android's admob id by device platform", function()
    fake_platform_name = "Android"

    local result = get_admob_id_by_platform.evaluate()

    assert.are.equal(result, "a1534511cd248dc")
  end)

  it("should return iOS's admob id by device platform", function()
    fake_platform_name = "iPhone OS"
    
    local result = get_admob_id_by_platform.evaluate()

    assert.are.equal(result, "a15350a7a1d099c")
  end)

  it("should get device's platform name from system", function()
    get_admob_id_by_platform.evaluate()

    assert.stub(system.getInfo).was_called_with("platformName")
  end)
end)
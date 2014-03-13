describe("get_fontname_by_platform", function ( ... )
  local get_fontname_by_platform

  local platform_name

  setup(function ( ... )

    system = { 
      getInfo = function ( ... )
        return platform_name
      end
    }
    spy.on(system, "getInfo")

    fontname_table = {
      Win="Font_A",
      Android = "fonta.ttf"
    }

    get_fontname_by_platform = require("utils.get_fontname_by_platform")
  end)

  it("Get platform name from system.getInfo", function ( ... )
    -- when
    get_fontname_by_platform.evaluate()
    -- then
    assert.stub(system.getInfo).was_called_with("platformName")
  end)

  it("Return font by given platform", function ( ... )
    -- given
    platform_name = "Win"
    -- when
    local result = get_fontname_by_platform.evaluate()
    -- then
    assert.are.equal(result, fontname_table[platform_name])
  end)
end)
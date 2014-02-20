describe("get_ground_vertical_position", function()
  local get_ground_vertical_position
  
  setup(function()
    get_ground_vertical_position = require("ground.get_ground_vertical_position")
  end)
  
  it("Return a vertical position on the ground of given object", function()
    -- given
    ground_config = { vertical_start=1000 }
    local object = {contentHeight=128}
    local expected_result = 872
    -- when
    local result = get_ground_vertical_position.evaluate(object)
    -- then
    assert.are.equal(expected_result, result)
  end)
end)
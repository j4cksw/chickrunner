describe("check_chick_landing_condition", function()
  local check_chick_landing_condition
  
  setup(function()
    check_chick_landing_condition = require("scene.game.chick.check_chick_landing_condition")
  end)
  
  it("Return true when event is began and other type is ground", function()
    -- given
    local event = {
      phase = "began",
      other = {
        type = "ground"
      },
    }
    -- when
    local result = check_chick_landing_condition.evaluate(event)
    -- then
    assert.are.True(result)
  end)
  
  it("Returm true when event is began and other type is box and otherElement greater than 1")
end)
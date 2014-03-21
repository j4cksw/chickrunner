describe("create_tap_to_start_button", function()
  local create_tap_to_start_button
  
  local tap_button = {}
  
  setup(function()
    display = {
      newImage = function ( ... )
        return tap_button
      end,
      contentCenterX = 100,
      contentCenterY = 100
    }
    
    create_tap_to_start_button = require("scene.game.create_tap_to_start_button")
  end)
  
  it("Create widget button", function ( ... )
    -- given
    spy.on(display, "newImage")
    -- when
    create_tap_to_start_button.evaluate()
    -- then
    assert.spy(display.newImage).was_called_with("img/screen/reay/tap.png")
  end)

  it("Move button to center x", function ( ... )
    --when
    create_tap_to_start_button.evaluate()
    --then
    assert.are.equal(tap_button.x, display.contentCenterX)
  end)

  it("Move button to given y", function ( ... )
    --when
    create_tap_to_start_button.evaluate()
    --then
    assert.are.equal(tap_button.y, display.contentCenterY)
  end)
  
end)
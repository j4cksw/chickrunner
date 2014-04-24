describe("create_controller_rect", function()
  local create_controller_rect

  local fake_rect = {}

  setup(function()
    display = {
      newRect = function()
        return fake_rect
      end,
      contentCenterX = 100,
      contentCenterY = 100,
      viewableContentWidth = 700,
      viewableContentHeight = 1000
    }
    spy.on(display, "newRect")
    
    stub(fake_rect, "setFillColor")
    stub(fake_rect, "addEventListener")
    
    ready_state_tap_listener = {}
    stub(ready_state_tap_listener, "evaluate")

    create_controller_rect = require("scene.game.create_controller_rect")
  end)

  it("should create control rectangle", function()
    create_controller_rect.evaluate()

    assert.stub(display.newRect).was_called_with(100,
      100,
      700,
      1180)
  end)

  it("should set fill color", function()
    create_controller_rect.evaluate()
    
    assert.stub(fake_rect.setFillColor).was_called_with(fake_rect, 0, 0.01)
  end)

  it("should set ready state tap listener to rect", function()
    create_controller_rect.evaluate()
    
    assert.stub(fake_rect.addEventListener).was_called_with(fake_rect, "tap", ready_state_tap_listener.evaluate)
  end)
end)
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

    create_controller_rect = require("scene.game.create_controller_rect")
  end)

  it("should create control rectangle", function()
    create_controller_rect.evaluate()

    assert.stub(display.newRect).was_called_with(100,
      100,
      700,
      1000)
  end)

  it("should set fill color")

  it("should set ready state tap listener to rect")
end)